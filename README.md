# Asuswrt-Merlin-Scripts
Miscellaneous Linux Shell Scripts developed for my personal Asuswrt-Merlin home router

# General Instructions

This scripts are targeted to be used on Asus routers running the modified [Asuswrt-Merlin](https://www.asuswrt-merlin.net/) software. To use this scripts you must first have.

1. [Enable SSH access](https://www.htpcguides.com/enable-ssh-asus-routers-without-ssh-keys/), If you want to acces via SSH throught the open internet (LAN + WAN) i **highly** recommend changing the port and disabling username password authentication (only using RSA keys).
2. Enable Custom Scripts. Go to Administration -> System -> Persistent JFFS2 partition and make sure that Enable JFFS custom scripts and configs is selected as "yes"

# Push Over

[Pushover](https://pushover.net/) is a service that enables to easily send Push Notifications to devices, I like it because by paying just once in a lifetime ($4.99 USD as of 2020) I get 7.500 free push notifications a month, more than enough for my personal needs. After installing the App on your smartphone, SSH in your router and create the file `/jffs/scripts/credentials.sh` with the following content:

```Shell
#!/bin/sh

export pushover_token="<Your pushover token goes here>"
export pushover_user="<Your pushover user goes here>"
```

# Get notification updates

It is very important to keep your router up to date with the latest firmware, this script will send you push notifications every time there's a new release.

```Shell
/usr/sbin/curl --retry 3 "https://raw.githubusercontent.com/ignaciohermosillacornejo/Asuswrt-Merlin-Scripts/master/update-notification" -o "/jffs/scripts/update-notification" && chmod 755 /jffs/scripts/update-notification && sh /jffs/scripts/update-notification
```

After running this command, you should see a push notification 



