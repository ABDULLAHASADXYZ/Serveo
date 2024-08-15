#!/bin/bash


white="\033[1;37m"                                          ##
grey="\033[0;37m"                                           ##
purple="\033[1;35m"                                         ##
red="\033[1;31m"                                            ##
green="\033[1;32m"                                          ##
yellow="\033[1;33m"                                         ##
purple="\033[0;35m"                                         ##
cyan="\033[0;36m"                                           ##
cyan1="\033[1;36m"                                          ##
cafe="\033[0;33m"                                           ##
fiuscha="\033[0;35m"                                        ##
blue="\033[1;34m"                                           ##
l_red="\033[1;37;41m"                                       ##
nc="\033[0m"                                                ##


printf "    \033[1;31m               ██     ██           ██          ██           ██     \n"
printf "    \033[1;31m              ████   ░██          ░██         ░██          ░██     \n"
printf "    \033[1;31m             ██░░██  ░██          ░██ ██   ██ ░██  ██████  ░██     \n"
printf "    \033[1;31m            ██  ░░██ ░██████   ██████░██  ░██ ░██ ░░░░░░██ ░██████ \n"
printf "    \033[1;31m           ██████████░██░░░██ ██░░░██░██  ░██ ░██  ███████ ░██░░░██\n"
printf "    \033[1;31m          ░██░░░░░░██░██  ░██░██  ░██░██  ░██ ░██ ██░░░░██ ░██  ░██\n"
printf "    \033[1;31m          ░██     ░██░██████ ░░██████░░██████ ███░░████████░██  ░██\n"
printf "    \033[1;31m          ░░      ░░ ░░░░░    ░░░░░░  ░░░░░░ ░░░  ░░░░░░░░ ░░   ░░ \n" 
printf "    \033[1;31m                       ┏━┓┏━╸┏━┓╻ ╻┏━╸┏━┓ ┏┓╻┏━╸╺┳╸\n"
printf "    \033[1;31m                       ┗━┓┣╸ ┣┳┛┃┏┛┣╸ ┃ ┃ ┃┗┫┣╸  ┃ \n"
printf "    \033[1;31m                       ┗━┛┗━╸╹┗╸┗┛ ┗━╸┗━┛╹╹ ╹┗━╸ ╹ \n"
printf "    \033[1;37m         instagram:https://www.instagram.com/cyber.warriors.io/\n"


read -p "Enter the port number to forward: " port

if [[ -z "$port" || ! "$port" =~ ^[0-9]+$ ]]; then
  echo "Invalid port number. Please enter a valid integer."
  exit 1
fi

read -p "Enter the custom subdomain (e.g., mycustomdomain): " subdomain

if [[ -z "$subdomain" ]]; then
  echo "Custom subdomain cannot be empty."
  exit 1
fi

ssh_command="ssh -R $subdomain:80:127.0.0.1:$port serveo.net -o ServerAliveInterval=30 -o ServerAliveCountMax=3 -o ExitOnForwardFailure=yes"

eval $ssh_command
