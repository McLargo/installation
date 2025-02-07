#!/bin/bash
export XDG_RUNTIME_DIR=/run/user/$(id -u)
/usr/bin/notify-send 'Hey dude!! Working time is over!!!' 'Power will be shut down in 10 minutes.' --icon=dialog-information

# Dependency: libnotify
# An overview on the available icons can be found [here](https://specifications.freedesktop.org/icon-naming-spec/icon-naming-spec-latest.html).

# CAREFUL with notify-send when running in crontab!
