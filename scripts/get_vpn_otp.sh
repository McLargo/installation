#!/bin/bash

# install dependencies
LIBRARIES=(oathtool xclip pass)

for library in "${LIBRARIES[@]}"; do
  printf "Checking if library: $library is installed\n"
  if ! command -v -- "$library" > /dev/null 2>&1; then
    printf "Installing $library...\n"
    sudo apt install "$library"
  fi
done

# get OTP key and generate OTP code
OTP_KEY=$(pass show vpn_otp_key)
if [ -z "$OTP_KEY" ]; then
  exit 1
fi

OTP_CODE=$(oathtool --totp -b "$OTP_KEY")

# check if OTP Code is empty
if [ -z "$OTP_CODE" ]; then
  printf "OTP Code is empty, cannot continue.\n"
  exit 1
fi

# copy VPN OTP Code to clipboard
printf "$OTP_CODE" | xclip -selection clipboard
printf "\nOTP Code copied to clipboard!\n"
