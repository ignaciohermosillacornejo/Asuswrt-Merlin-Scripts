#!/bin/sh
VER="1.0"


ENV_VARS=$(env)

. /jffs/scripts/credentials.sh

push_message(){
    echo "starting push"
    curl -s \
          --form-string "token=$pushover_token"\
          --form-string "user=$pushover_user"\
          --form-string "message=$username just connected to the VPN Server from $trusted_ip"\
          https://api.pushover.net/1/messages.json
}
push_message
