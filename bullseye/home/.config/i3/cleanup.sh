! /bin/sh

echo "Cleaning..."

# Clean browser data
rm -rf $HOME/.cache/chromium/ $HOME/.config/chromium/   #Chromium
rm -rf $HOME/.cache/mozilla/ $HOME/.mozilla/            #Firefox

# Wait 1 second
sleep 1

echo "Swaping with clean one..."

# Swap with clean data
tar -xvjf $HOME/Backup/.mozilla.tar.bz2 -C $HOME/

# Wait 1 second
sleep 1
