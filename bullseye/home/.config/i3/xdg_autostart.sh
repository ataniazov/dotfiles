#!/bin/sh
grep -rh Exec ~/.config/autostart | while read -r line ; do
    ${line:5} &
done
