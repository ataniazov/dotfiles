# Anonymity

## Firefox >= 64.0

### Preferences

*General*

```
[x] Show a blank page

Language -> Russian
[ ] Check your spelling as you type
```

*Search*

```
Default Search Engine
	Google

	[ ] Provide search suggestions
		[ ] Show search suggestions in address bar results

One-Click Search Engines
	Google
```

*Privacy & Security*

```
Forms & Passwords
[ ] Remember logins and passwords for websites

History
Firefox will [Use custom settings for history]
	[ ] Remember my browsing and download history
	[ ] Remember search and form history
	[x] Accept cookies from websites
	    Accept third-party cookies [Never]
	    Keep until [I close Firefox]
	[x] Clear history when Firefox closes
		-> Settings
	Data
	[x] Site Preferences	[x] Offline Website Data

Address Bar
[ ] Browsing history
[ ] Bookmarks
[ ] Open tabs

Tracking Protection
Use Tracking Protection to block know trackers
[x] Always

Send websites a "Do Not Track" signal that you don't want to be tracked
[x] Always

Permissions
[x] Prevent accessibility services from accessing your browser

Firefox Data Collection and Use

[ ] Allow Firefox to send technical and interaction data to Mozilla
	[ ] Allow Firefox to install and run studies

```

*Firefox Account*

```
Do Not Sign In...:)
```

### about:config

```
media.peerconnection.enabled		true -> false
network.proxy.socks_remote_dns		false -> true
extensions.pocket.enabled		true -> false
```

*Change user-agent*

```
New -> String -> "general.useragent.override"

Mozilla/5.0 (X11; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0
Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0
Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:64.0) Gecko/20100101 Firefox/64.0
```

### Addons

uBlock Origin
Privacy Badger
HTTPS Everywhere


## Hosts
git clone https://github.com/StevenBlack/hosts.git
cd hosts
python3 updateHostsFile.py -e gambling
