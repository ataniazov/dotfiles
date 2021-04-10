#!/bin/sh

# i3status.conf should contain:
# general {
#   output_format = i3bar
# }
#
# i3 config looks like this:
# bar {
#   status_command exec netspeed.sh
# }
#
# Single interface:
# ifaces="eth0"
#
# Multiple interfaces:
# ifaces="eth0 wlan0"

# Auto detect interfaces
ifaces=$(ls /sys/class/net | grep -E '^(eno|enp|ens|enx|eth|wlan|wlp|wlxc)')

if [ -z "$ifaces" ]; then
    i3status
else
    last_time=0
    last_rx=0
    last_tx=0
    rate=""

#   readable() {
#       local bytes=$1
#       local kib=$(( bytes >> 10 ))
#       if [ $kib -lt 0 ]; then
#           echo "? K"
#       elif [ $kib -gt 1024 ]; then
#           local mib_int=$(( kib >> 10 ))
#           local mib_dec=$(( kib % 1024 * 976 / 10000 ))
#           if [ "$mib_dec" -lt 10 ]; then
#               mib_dec="0${mib_dec}"
#           fi
#           echo "${mib_int}.${mib_dec} M"
#       else
#           echo "${kib} K"
#       fi
#   }

    readable() {
        local bytes=$1
        local kbits=$(( bytes * 8 / 1000 ))
        local result
        if [ $kbits -le 0 ]; then
            if $2; then
                result="0↓"
            else
                result="0↑"
            fi
        elif [ $kbits -gt 1000 ]; then
            local mbits_int=$(( kbits / 1000 ))
            local mbits_dec=$(( kbits % 1000 / 10 ))
            if [ "$mbits_dec" -lt 10 ]; then
                mbits_dec="0${mbits_dec}"
            fi
            result="${mbits_int}.${mbits_dec}M"
        else
            result="${kbits}k"
        fi
        echo $result
    }

    update_rate() {
        local time=$(date +%s)
        local rx=0 tx=0 tmp_rx tmp_tx

        for iface in $ifaces; do
            read tmp_rx < "/sys/class/net/${iface}/statistics/rx_bytes"
            read tmp_tx < "/sys/class/net/${iface}/statistics/tx_bytes"
            rx=$(( rx + tmp_rx ))
            tx=$(( tx + tmp_tx ))
        done

        local interval=$(( $time - $last_time ))
        if [ $interval -gt 0 ]; then
            rate="$(readable $(( (rx - last_rx) / interval )) true) $(readable $(( (tx - last_tx) / interval )) false)"
        else
            rate=""
        fi

        last_time=$time
        last_rx=$rx
        last_tx=$tx
    }

    i3status | (read line && echo "$line" && read line && echo "$line" && read line && echo "$line" && update_rate && while :
    do
        read line
        update_rate
        echo ",[{\"full_text\":\"${rate}\",\"separator\":false},${line#,\[}" || exit 1
    done)
fi
