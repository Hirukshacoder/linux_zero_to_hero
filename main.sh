#!/bin/bash

figlet -f slant "Treveen The Tech"
echo ""


bold=`echo -en "\e[1m"`
underline=`echo -en "\e[4m"`
dim=`echo -en "\e[2m"`
strickthrough=`echo -en "\e[9m"`
blink=`echo -en "\e[5m"`
reverse=`echo -en "\e[7m"`
hidden=`echo -en "\e[8m"`
normal=`echo -en "\e[0m"`
black=`echo -en "\e[30m"`
red=`echo -en "\e[31m"`
green=`echo -en "\e[32m"`
orange=`echo -en "\e[33m"`
blue=`echo -en "\e[34m"`
purple=`echo -en "\e[35m"`
aqua=`echo -en "\e[36m"`
gray=`echo -en "\e[37m"`
darkgray=`echo -en "\e[90m"`
lightred=`echo -en "\e[91m"`
lightgreen=`echo -en "\e[92m"`
lightyellow=`echo -en "\e[93m"`
lightblue=`echo -en "\e[94m"`
lightpurple=`echo -en "\e[95m"`
lightaqua=`echo -en "\e[96m"`
white=`echo -en "\e[97m"`
default=`echo -en "\e[39m"`
BLACK=`echo -en "\e[40m"`
RED=`echo -en "\e[41m"`
GREEN=`echo -en "\e[42m"`
ORANGE=`echo -en "\e[43m"`
BLUE=`echo -en "\e[44m"`
PURPLE=`echo -en "\e[45m"`
AQUA=`echo -en "\e[46m"`
GRAY=`echo -en "\e[47m"`
DARKGRAY=`echo -en "\e[100m"`
LIGHTRED=`echo -en "\e[101m"`
LIGHTGREEN=`echo -en "\e[102m"`
LIGHTYELLOW=`echo -en "\e[103m"`
LIGHTBLUE=`echo -en "\e[104m"`
LIGHTPURPLE=`echo -en "\e[105m"`
LIGHTAQUA=`echo -en "\e[106m"`
WHITE=`echo -en "\e[107m"`
DEFAULT=`echo -en "\e[49m"`
echo ""

if [ "$EUID" -ne 0 ]; then
  echo "${red}Yo man are you dumb? run as root!"
  exit
fi

echo -e "${bold}select an option from below"

echo ""


echo "${green}[1] - update linux and upgrade it ===> ( works on any platform )"
echo ""
echo "${green}[2] - look at the shadow folder ===> ( security folder or where your hashes of passwords are saved )"                      
echo ""
echo "${green}[3] - T tools advanced cyber security ===> ( Multi functioning hacking tool )"
echo ""
echo "${green}[4] - Install docker ===> ( best for developers )"
echo ""
echo "${green}[5] - Install python and pip ===> ( the most easiest language and the most popular in hacking )"
echo ""
echo "${green}[6] - Install Burpsuite ===> ( xss, xxe, broken authentication, sql injection )"
echo ""
echo "${green}[7] - Install Metasploit ===> ( exploits, wireless attacks, android hacking , windows, active directory hacking, best tool ever )"
echo ""
echo "${green}[8] - Install Golang ===> ( language for hacking )"
echo ""
echo "${green}[9] - Install Git ===> ( works with github to install an manage repositories )"
echo ""
echo "${green}[10] - Install Assetfinder ( A tool to grab subdomains )"
echo ""
echo "${green}[11] - Install Httprobe from Tom Hudson ===> ( prob for alive domains )"
echo ""
echo "${green}[12] - Install Amass ===> ( A tool to search for subdomains )"
echo ""
echo "${green}[13] - Install Waybackurls ===> ( Awesome speechless )"
echo ""
echo "${green}[14] - Install Hacks from Tom Hudson ===> ( Not bad )"
echo ""
echo "${green}[15] - Install Meg from Tom Hudson ===> ( kind of going because glang )"

echo ""

echo "option: "

echo ""
read option

if [[ $option = "1" ]];then
	sudo apt update 
	sudo apt upgrade 
	
elif [[ $option = "2" ]];then
	echo ""
	clear
	sudo cat /etc/shadow


elif [[ $option = "3" ]];then
	echo "[+] Installing"
	clear
	git clone https://github.com/Hirukshacoder/T-Tools-advanced--cyber-security

	
elif [[ $option = "4" ]];then
	sudo apt update
	sudo apt install -y docker.io
	sudo systemctl enable docker --now
	
elif [[ $option = "5" ]];then
	clear
	sudo apt install python3
	sudo apt install python3-pip
	
elif [[ $option = "6" ]];then
	clear
	sudo bash burp.sh
	
elif [[ $option = "7" ]];then
	clear
	curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  	chmod 755 msfinstall && \
  	./msfinstall
  	echo ""
  	echo "done installing"
  	
elif [[ $option = "8" ]];then
	clear
	echo "[+] Installing"
	sudo apt install -y golang
	
elif [[ $option = "9" ]];then
	clear
	sudo apt-get install git
	
elif [[ $option = "10" ]];then
	clear
	go install github.com/tomnomnom/assetfinder@latest
	
elif [[ $option = "11" ]];then
	clear
	go install github.com/tomnomnom/httprobe@latest
	
elif [[ $option = "12" ]];then
	clear
	go install -v github.com/OWASP/Amass/v3/...@master
	
elif [[ $option = "13" ]];then
	clear
	go install github.com/tomnomnom/waybackurls@latest
	
elif [[ $option = "14" ]];then
	clear
	git clone https://github.com/tomnomnom/hacks
	
elif [[ $option = "15" ]];then
	clear
	go install github.com/tomnomnom/meg@latest
fi
