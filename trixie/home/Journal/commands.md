# Commands

* APT downloading via HTTP/HTTPS/SOCKS5 proxy
```bash
$ sudo apt -o Acquire::http::Proxy="socks5h://127.0.0.1:1080" <options>
```

* wget
```bash
$ wget --tries=20 --retry-connrefused --no-parent --no-clobber --mirror --page-requisites --adjust-extension --convert-links --random-wait -e robots=off --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.41 Safari/537.36" -e use_proxy=on -e http_proxy="http://127.0.0.1:8080/" -e https_proxy="http://127.0.0.1:8080/" -e ftp_proxy="http://127.0.0.1:8080/" "url"
```

* git
```bash
$ git -c http.proxy=socks5://127.0.0.1:1080 <command>
```

* git ssh clone
```bash
$ git clone git@github.com:ataniazov/dotfiles.git
$ cd dotfiles
$ git config --local user.email ""
$ git config --local user.name "USER_NAME"
```

* rsync
```bash
$ rsync -avzhPn --delete ${SRC} ${DST}
```
