#!/bin/bash
#Developed by Akshansh Shrivastava for Reconnaissance. 
#12 March 2017
bold=$(tput bold)
normal=$(tput sgr0)
NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'
function akscan {
clear
echo -e "
${RED}__     ___   _ ___ ____  ${CYAN}   ___   ${PURPLE}  ____  _____ 
${RED}\ \   / / \ | |_ _|  _ \ ${CYAN}  ( _ )  ${PURPLE} / ___|| ____|
${RED} \ \ / /|  \| || || | | |${CYAN}  / _ \/\ ${PURPLE} \___ \|  _|  
${RED}  \ V / | |\  || || |_| |${CYAN} | (_>  <${PURPLE}  ___) | |___ 
${RED}   \_/  |_| \_|___|____/  ${CYAN} \___/\/ ${PURPLE}|____/|_____| ${NONE}"
echo

echo -e "${YELLOW}Velocious Network Information Diving & System Elevator Toolkit" 
echo
echo -ne "${UNDERLINE}${CYAN}Hello Mr." 
whoami
echo $a
echo -e "${NONE}"
echo                                                
echo -e "${RED}Better run it as root user ${NONE}"
echo
echo "Usage:"
echo -e "${WHITE}Enter '0' to check if host is 'Alive' or 'Dead'"
echo "Enter '1' for traceroute"
echo "Enter '2' for nmap"
echo "Enter '3' for finding IP of domain"
echo "Enter '4' for whois lookup"
echo "Enter '5' for dmitry"
echo "Enter '6' for netdiscover"
echo "Enter '7' to Know Your System Architecture"  
echo "Enter '8' for finding email addresses of a domain"
echo -n "Enter '9' to Update and Upgrade your "
cat /etc/issue.net
echo "Enter '10' to know your Internet Speed"
echo "Enter 'getall' to get required tools"
echo
echo -ne "Enter your choice: "
echo -en "${PURPLE}"
read o
reqtl () {
apt-get install nmap
apt-get install traceroute
apt-get install whois
apt-get install netdiscover
apt-get install dmitry
apt-get install theharvester
apt-get install speedtest-cli
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
}
aord () {
echo -n "Enter Domain Name or IP Address of a Domain: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
#creates session directory
mkdir -p /root/$SESSION 
(while ! ping -c1 $ip &>/dev/null; do echo "Ping Fail - `date`"; done ; echo "Host Found - `date`" ;) | tee $SESSION/hostcheck_$ip.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
while ! ping -c1 $ip &>/dev/null; do echo "Ping Fail - `date`"; done ; echo "Host Found - `date`" ; 
fi
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
}
findroad () {
echo -n "IP: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
#creates session directory
mkdir -p /root/$SESSION 
traceroute $ip | tee $SESSION/traceroute_$ip.txt 
elif [[ "$yn" = 2 ]]
then
    traceroute $ip
fi
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
}      
nmapperw () {
clear
echo "${bold}Nmap${normal}"
echo "1. Intense Scan"
echo "2. Intense Scan plus UDP"
echo "3. Intense Scan, all TCP Port"
echo "4. Intense scan, no ping"
echo "5. Ping scan"
echo "6. Quick scan"
echo "7. Quick scan plus"
echo "8. Quick traceroute"
echo "9. Regular scan"
echo "10.Slow comprehensive scan"
echo "11.Custom command"
read scant
if [[ "$scant" = 1 ]]
then
echo "1. Intense Scan"
echo -n "IP: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
#creates session directory
mkdir -p /root/$SESSION 
nmap -T4 -A -v $ip | tee $SESSION/nmaping_$ip.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
    nmap -T4 -A -v $ip
fi
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$scant" = 2 ]]
then
echo "Intense Scan plus UDP"
echo -n "IP: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
mkdir -p /root/$SESSION
nmap -sS -sU -T4 -A -v $ip | tee $SESSION/nmaping_$ip.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
    nmap -sS -sU -T4 -A -v $ip
fi
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$scant" = 3 ]]
then
echo "Intense Scan, all TCP Port"
echo -n "IP: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
mkdir -p /root/$SESSION
nmap -p 1-65535 -T4 -A -v $ip | tee $SESSION/nmaping_$ip.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
nmap -p 1-65535 -T4 -A -v $ip
fi
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$scant" = 4 ]]
then
echo "4. Intense scan, no ping"
echo -n "IP: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
mkdir -p /root/$SESSION
nmap -T4 -A -v -Pn $ip | tee $SESSION/nmaping_$ip.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
nmap -T4 -A -v -Pn $ip
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi
elif [[ "$scant" = 5 ]]
then
echo "Ping Scan"
echo -n "IP: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
mkdir -p /root/$SESSION
nmap -sn $ip | tee $SESSION/nmaping_$ip.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
nmap -sn $ip
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi
elif [[ "$scant" = 6 ]]
then
echo "Quick scan"
echo -n "IP: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
mkdir -p /root/$SESSION
nmap -T4 -F $ip | tee $SESSION/nmaping_$ip.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
nmap -T4 -F $ip
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi
elif [[ "$scant" = 7 ]]
then
echo "Quick scan plus"
echo -n "IP: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
mkdir -p /root/$SESSION
nmap -sV -T4 -O -F --version-light $ip | tee $SESSION/nmaping_$ip.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
nmap -sV -T4 -O -F --version-light $ip
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi
elif [[ "$scant" = 8 ]]
then
echo "Quick traceroute"
echo -n "IP: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
mkdir -p /root/$SESSION
nmap -sn --traceroute $ip | tee $SESSION/nmaping_$ip.txt 
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
nmap -sn --traceroute $ip 
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi
elif [[ "$scant" = 9 ]]
then
echo "Regular scan"
echo -n "IP: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
mkdir -p /root/$SESSION
nmap $ip | tee $SESSION/nmaping_$ip.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
nmap $ip
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi
elif [[ "$scant" = 10 ]]
then
echo "Slow comprehensive scan"
echo -n "IP: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
mkdir -p /root/$SESSION
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" $ip | tee $SESSION/nmaping_$ip.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)"
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi
elif [[ "$scant" = 11 ]]
then
echo "Custom Scan"
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
mkdir -p /root/$SESSION
echo "Enter your custom command"
read cuscom
$cuscom | tee $SESSION/nmap.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
echo "Enter your custom command"
read cuscom
$cuscom

echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi
fi
}
findip () {
echo -n "Domain Name: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e ep
mkdir -p /root/$ep
         nslookup $ip | tee $ep/nslookup_$ip.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
    nslookup $ip
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi
        }
whoisthis ()
          {
echo -n "IP: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
#creates session directory
mkdir -p /root/$SESSION 
          whois $ip | tee $SESSION/whois_$ip.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
    whois $ip
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi
          
          }
fulldetail ()
           {
echo -n "Domain name: "
read ip
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
#creates session directory
mkdir -p /root/$SESSION 

           dmitry -w $ip | tee $SESSION/dmitry_$ip.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
           dmitry -w $ip
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi
           }
ddivice () {
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
#creates session directory
mkdir -p /root/$SESSION 
echo -n "Enter the name of network device: "
read i
echo "Enter initial IP Address"
echo "eg: 192.168.1.1"
read r
echo "Last ip range"
echo "Network range must be 0.0.0.0/8 , 16 or 24"
read l

          netdiscover -i $i -r $r/$l | tee $SESSION/netdiscover_$r_$l.txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$yn" = 2 ]]
then
echo -n "Enter the name of network device: "
read i
echo "Enter initial IP Address"
echo "eg: 192.168.1.1"
read r
echo "Last ip range"
echo "Network range must be 0.0.0.0/8 , 16 or 24"
read l
    netdiscover -i $i -r $r/$l
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi         
}
knowarch () {
echo "Your Current System Architecture is: "
uname -m
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
}
speedchecks () {
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
#creates session directory
mkdir -p /root/$SESSION 
speedtest | tee $SESSION/Internet_Speed_Results.txt
elif [[ "$yn" = 2 ]]
then
speedtest
fi
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
			1) akscan;;
esac
}


harvest () {
echo "Do you want an output file ?"
echo "1. Yes"
echo "2. No"
read yn
if [[ "$yn" = 1 ]]
then
echo "Enter path: "
read -e SESSION
#creates session directory
mkdir -p /root/$SESSION 
echo -n "Enter Domain Name: "
read hrv
echo -n "Enter maximum Emails: "
read len
echo "Enter search engine"
echo "1 for Google"
echo "2 for GoogleCSE"
echo "3 for bing"
echo "4 for pgp"
echo "5 for all"
read op
if [[ "$op" = 1 ]]
then 
      theharvester -d $hrv -l $len -b google | tee $SESSION/emails_of_$hrv" via google".txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$op" = 2 ]]
then
      theharvester -d $hrv -l $len -b googleCSE | tee $SESSION/emails_of_$hrv" via googleCSE".txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$op" = 3 ]]
then
     theharvester -d $hrv -l $len -b bing | tee $SESSION/emails_of_$hrv" via bing".txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$op" = 4 ]]
then    
     theharvester -d $hrv -l $len -b pgp | tee $SESSION/emails_of_$hrv" via pgp".txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$op" = 5 ]]
then
     theharvester -d $hrv -l $len -b all | tee $SESSION/emails_of_$hrv" via all".txt
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi
elif [[ "$yn" = 2 ]]
then
echo -n "Enter Domain Name: "
read hrv
echo -n "Enter maximum Emails: "
read len
echo "Enter search engine"
echo "1 for Google"
echo "2 for GoogleCSE"
echo "3 for bing"
echo "4 for pgp"
echo "5 for all"
read op
if [[ "$op" = 1 ]]
then 
      theharvester -d $hrv -l $len -b google
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$op" = 2 ]]
then
     theharvester -d $hrv -l $len -b googleCSE
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$op" = 3 ]]
then
     theharvester -d $hrv -l $len -b bing
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$op" = 4 ]]
then    
     theharvester -d $hrv -l $len -b pgp
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
elif [[ "$op" = 5 ]]
then
     theharvester -d $hrv -l $len -b all
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
fi
fi
}
upandupg () {
apt-get update && apt-get upgrade
echo -n "Press '1' to go back or Press "'Enter'" to exit "
read inp
case $inp in
            1) akscan;;
esac
}

if [[ "$o" = 0 ]]
then
		aord
elif [[ "$o" = 1 ]]
then
        findroad
elif [[ "$o" = 2 ]]
then
        nmapperw
elif [[ "$o" = 3 ]]
then
        findip
elif [[ "$o" = 4 ]]
then 
        whoisthis
elif [[ "$o" = 5 ]]
then
        fulldetail
elif [[ "$o" = 6 ]]
then 
        ddivice
elif [[ "$o" = 7 ]]
then
		knowarch
elif [[ "$o" = 8 ]]
then
        harvest
elif [[ "$o" = 9 ]]
then
        upandupg
elif [[ "$o" = 10 ]]
then
        speedchecks
elif [[ "$o" = 'getall' ]]
then 
        reqtl
else
        echo -n "Invalid Input, GoodDay Mr." 
        whoami
        exit 1
fi
}
akscan
