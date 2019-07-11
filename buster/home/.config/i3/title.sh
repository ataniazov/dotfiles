#!/bin/sh
# shell script to prepend i3status with more stuff
echo "{\"version\":1}"
echo "["

i3status | while :
do
	read line
	#echo "mystuff | $line" || exit 1
	title=$(xdotool getactivewindow getwindowname 2>/dev/null || \
		echo Workspace `i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name' | cut -d"\"" -f2`)
	echo -n "[{\"name\":\"title\",\"markup\":\"none\",\"full_text\":\"$title\",\"separator\":false}]," || exit 1
done
