#!/bin/sh
# shell script to show window title on i3bar

# i3 config should contain:
# bar {
#     status_command exec title.sh
# }

title="$(xdotool getactivewindow getwindowname 2>/dev/null)"

echo "{\"version\":1}"
echo "["
echo "[{\"full_text\":\"$title\",\"separator\":false}]"

i3-msg -t subscribe -m '[ "window", "workspace" ]' | (while :
do
    read line
    title=$(echo $line | jq 'select(.change=="focus").container | .name')
    if [ -n "$title" ]; then
        if [ "$title" = "null" ]; then
            title="\"\""
        fi
        echo ",[{\"full_text\":$title,\"separator\":false}]" || exit 1
        #echo ",[{\"name\":\"title\",\"markup\":\"none\",\"full_text\":\"$title\",\"separator\":false}]" || exit 1
    fi
done)
