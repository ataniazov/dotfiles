#!/bin/sh
# shell script to prepend i3status with more stuff

update_title() {
    title="$(xdotool getactivewindow getwindowname 2>/dev/null || \
        echo Workspace `i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name' | cut -d"\"" -f2`)"
}

echo "{\"version\":1}"
echo "["

#echo -n "[{\"name\":\"title\",\"markup\":\"none\",\"full_text\":\"$title\",\"separator\":false}]," || exit 1

#i3status | (read line && echo "$line" && read line && echo "$line" && update_title && while :
while :
do
    update_title
    echo -n "[{\"full_text\":\"${title}\",\"separator\":false}]\n," || exit 1
    sleep 1
done
#done)
