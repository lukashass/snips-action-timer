#!/bin/sh

npm install && npm run build

if [ ! -e "./config.ini" ]
then
  cp config.ini.default config.ini
fi

if [ -e "/etc/hermes-config.json" ] && [ ! -e "./hermes-config.json" ]
then
  ln -s /etc/hermes-config.json hermes-config.json
fi
