#!/bin/bash

bold=`echo -en "\e[1m"`
aqua=`echo -en "\e[36m"`
LIGHTGREEN=`echo -en "\e[102m"`

echo "${bold}${aqua}Installing requirements for linuxallset"

echo ""

sudo apt install figlet lolcat
