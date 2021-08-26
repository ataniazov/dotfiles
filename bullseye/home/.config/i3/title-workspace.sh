#!/bin/sh
# shell script to show window title or workspace number on i3bar

# i3 config should contain:
# bar {
#     status_command exec title-workspace.sh
# }

title=$(xdotool getactivewindow getwindowname 2>/dev/null || \
    echo Workspace `i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name' | cut -d"\"" -f2`)

echo "{\"version\":1}"
echo "["
echo "[{\"full_text\":\"${title}\",\"separator\":false}]"

i3-msg -t subscribe -m '[ "window", "workspace" ]' | (while :
do
    read line
    message=$(echo $line | jq 'select(.change=="focus")')
    if [ -n "$message" ]; then
        title=$(echo $message | jq '.container | .name | select(. != null)')
        if [ -z "$title" ]; then
            title=$(echo \"Workspace `echo $message | jq '.current | .name' | cut -d"\"" -f2`\")
        fi
        echo ",[{\"full_text\":${title},\"separator\":false}]" || exit 1
        #echo ",[{\"name\":\"title\",\"markup\":\"none\",\"full_text\":\"$title\",\"separator\":false}]" || exit 1
    fi
done)
