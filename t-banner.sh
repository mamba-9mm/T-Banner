#!/data/data/com.termux/files/usr/bin/bash
######################################
#        PROJECT: T-Banner           #
#        Author: mamba-9mm           #
# Email: mambamentality9mm@gmail.com #
######################################

# Installing the following packages to install T-Banner
echo 
echo -e "\e[32m[*]\e[34m Installing T-Banner \e[m "
echo
# storage permission
termux-setup-storage

echo

# Updating the packages
apt-get update -y

# Upgrading the packages
apt-get upgrade -y

# Installing python if not installed ;if install null
apt-get install python -y

# packing up figlet
apt-get install figlet -y

#Installing ruby
apt-get install ruby -y

# install gem ruby
gem install ruby

#parsing ruby ....
pip install lolcat

#install lolcat with gems
gem install lolcat

#Install toilet
apt-get install toilet -y

# now installing ncurses-utils
pkg install ncurses-utils -y

# install cowsay in termux if not installed
apt-get install cowsay -y

#installing nano
apt-get install nano -yq --silent

# install mpv to play the hackers sound
apt-get install mpv -y


cd ${PREFIX}/share
git clone https://github.com/xero/figlet-fonts.git >> /dev/null 2>&1

# Moving figlet-fonts to figlet
mv figlet-fonts/* figlet &&  rm -rf figlet-fonts

cd $HOME


# T-Banner Banner 

clear
echo 
# hide cursor
tput civis
echo "


               ███████╗   ██████╗  █████╗ ███╗   ██╗███╗   ██╗███████╗██████╗ 
              ╚══██╔══╝   ██╔══██╗██╔══██╗████╗  ██║████╗  ██║██╔════╝██╔══██╗
                 ██║█████╗██████╔╝███████║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝
                 ██║╚════╝██╔══██╗██╔══██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗
                 ██║      ██████╔╝██║  ██║██║ ╚████║██║ ╚████║███████╗██║  ██║
                 ╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝v 1.0" |lolcat

echo
echo "             ☆:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆" |lolcat -t
echo "                          s c r i p t  b y   m a m b a - 9 m m               " |lolcat -t
echo "             ☆:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆" |lolcat -t

sleep 3
echo 
echo
echo "[*] Installing T-Banner  " |lolcat
echo
sleep 4
echo "[*] Please Wait " |lolcat
echo
sleep 3
echo  "[*] Checking the required packages " |lolcat
echo
sleep 2
echo  "[*] Reading package list " |lolcat
echo
sleep 2
echo  "[*] Done " |lolcat
echo
sleep 2

# cursor to normal

# change directory to etc
cd /data/data/com.termux/files/usr/etc

# remove old bash.bashrc
rm bash.bashrc
rm -rf motd

#Change dir to ~
cd $HOME

# Change dir to T-Banner
cd T-Banner

#copy new bash.bashrc to usr/etc
cp bash.bashrc /data/data/com.termux/files/usr/etc

#check old file exits or not if exits remove it and replace it
tfile="${PREFIX}/bin/uninstall-T-Banner"
if [ -f "$tfile" ]
then
rm ${PREFIX}/bin/uninstall-T-Banner
else 
echo
fi

# copy uninstall T-Banner
chmod +x uninstall-T-Banner
cp uninstall-T-Banner ${PREFIX}/bin

#chanage dir to home
cd $HOME

#change directory to T-Banner
cd T-Banner

#from here copying the hacker.mp3 sound to the sdcard of the user
cp hacker.mp3 /sdcard

tput cnorm
#exec user.sh to validate user define variable
bash user.sh

clear
echo
echo
tput civis
echo -e "\033[1;34m[*]\e[33m Setting login information \e[m"
echo
sleep 3                                                                  
echo -e "\033[1;34m[*]\e[33m Installing Login Packages \e[m "
echo
sleep 4
echo -e "\033[1;34m[*]\e[33m Reading packages \e[m "
echo
sleep 5
echo -e "\033[1;34m[*]\e[33m Securing termux-login \e[m "
echo
sleep 2
echo -e "\033[1;34m[*]\e[33m Please Wait \e[m "
echo
sleep 1
echo -e "\033[1;34m[*]\e[33m Done \e[m "
sleep 3
tput cnorm
# Login Banner 

clear
echo 
echo 
tput civis
echo -e "\e[32m    

                       ██╗      █████╗  ██████╗ ██╗███╗  ██╗
                       ██║     ██╔══██╗██╔════╝ ██║████╗ ██║
                       ██║     ██║  ██║██║  ██╗ ██║██╔██╗██║
                       ██║     ██║  ██║██║  ╚██╗██║██║╚████║
                       ███████╗╚█████╔╝╚██████╔╝██║██║ ╚███║         
		       ╚══════╝ ╚════╝  ╚═════╝ ╚═╝╚═╝  ╚══╝ v 1.0 "
echo 
echo "            ☆:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆" |lolcat -t
echo "                            s c r i p t  b y  m a m b a - 9 m m             " |lolcat -t
echo "            ☆:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::☆" |lolcat -t

sleep 4
tput cnorm

# SETTING UP A LOGIN INFORMATION FROM USER SIDE 
bash login.sh

#spinner 
bash mamba-9mm.sh

# user custom theme setup
# select the option to the setup the theme
# check if dir or files exist

#Dir=.termux
DIR="$HOME/.termux"
 if [ -d "$DIR" ]
then 
  echo
else
  mkdir $HOME/.termux
fi

#file1=termux.properties
FILE="$HOME/.termux/termux.properties"
if [ -f "$FILE" ]
then 
  echo
else
  cd $HOME/.termux/
  touch termux.properties
fi

#file2=colors.properties
FILES1="$HOME/.termux/colors.properties"
if [ -f "FILES1" ]
 then
  echo 
 else 
  cd $HOME/.termux/
  touch colors.properties
 fi
 
 #file1=$PREFIX/bin/zsh
FILE2="$PREFIX/bin/zsh"
if [ -f "$FILE2" ]
then 
  rm -rf $PREFIX/bin/zsh
else
  echo
fi
 
clear
cd $HOME
cd T-Banner

#start a loop for invalid option
#user define themes 
#The top 14 best themes for termux

#start of while loop
#Themes Banner
#choose options
while :
do
echo 
echo "===============================" |lolcat
echo "    Various themes options" |lolcat
echo "===============================" |lolcat
echo
echo -e "\e[31m[\e[33m01\e[31m]\e[32m best of T-Banner \e[m "
echo -e "\e[31m[\e[33m02\e[31m]\e[32m black on white \e[m "
echo -e "\e[31m[\e[33m03\e[31m]\e[32m dark properties \e[m "
echo -e "\e[31m[\e[33m04\e[31m]\e[32m forest dark \e[m "
echo -e "\e[31m[\e[33m05\e[31m]\e[32m forest light \e[m "
echo -e "\e[31m[\e[33m06\e[31m]\e[32m green on black \e[m "
echo -e "\e[31m[\e[33m07\e[31m]\e[32m isotope dark \e[m "
echo -e "\e[31m[\e[33m08\e[31m]\e[32m isotope light \e[m "
echo -e "\e[31m[\e[33m09\e[31m]\e[32m neon properties \e[m "
echo -e "\e[31m[\e[33m10\e[31m]\e[32m night properties \e[m "
echo -e "\e[31m[\e[33m11\e[31m]\e[32m solarized dark \e[m "
echo -e "\e[31m[\e[33m12\e[31m]\e[32m solarized light \e[m "
echo -e "\e[31m[\e[33m13\e[31m]\e[32m white on black \e[m "
echo -e "\e[31m[\e[33m14\e[31m]\e[32m default \e[m "
echo
read -p $'\e[32m>> Select your theme:\e[m ' n
tput civis
if [ $n = 1 ] || [ $n = 01 ]
then
 cd properties/T-Banner_colors
 cat best-of-t-banner > $HOME/.termux/colors.properties
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying changes \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 echo
 sleep 2
 break
elif [ $n = 2 ] || [ $n = 02 ]
then
 cd properties/T-Banner_colors
 cat black-on-white > $HOME/.termux/colors.properties
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying changes \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 echo
 sleep 2
 break
elif [ $n = 3 ] || [ $n = 03 ]
then
 cd properties/T-Banner_colors
 cat dark-properties > $HOME/.termux/colors.properties
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying changes \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 sleep 2
 echo
 break
 elif [ $n = 4 ] || [ $n = 04 ]
then
 cd properties/T-Banner_colors
 cat forest-dark > $HOME/.termux/colors.properties
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying changes \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 sleep 2
 echo
 break
 elif [ $n = 5 ] || [ $n = 05 ]
then
 cd properties/T-Banner_colors
 cat forest-light > $HOME/.termux/colors.properties
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying changes \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 echo
 sleep 2
 break
 elif [ $n = 6 ] || [ $n = 06 ]
then
 cd properties/T-Banner_colors
 cat green-on-black > $HOME/.termux/colors.properties
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying changes \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 echo
 sleep 2
 break
 elif [ $n = 7 ] || [ $n = 07 ]
then
 cd properties/T-Banner_colors
 cat isotope-dark > $HOME/.termux/colors.properties
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying changes \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 echo
 sleep 2
 break
 elif [ $n = 8 ] || [ $n = 08 ]
then
 cd properties/T-Banner_colors
 cat isotope-light > $HOME/.termux/colors.properties
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying changes \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 echo
 sleep 2
 break
 elif [ $n = 9 ] || [ $n = 09 ]
then
 cd properties/T-Banner_colors
 cat neon-properties > $HOME/.termux/colors.properties
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying changes \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 echo
 sleep 2
 break
 elif [ $n = 10 ] 
then
 cd properties/T-Banner_colors
 cat night-properties > $HOME/.termux/colors.properties
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying changes \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 echo
 sleep 2
 break
 elif [ $n = 11 ] 
then
 cd properties/T-Banner_colors
 cat solarized-dark > $HOME/.termux/colors.properties
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying changes \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 echo
 sleep 2
 break
 elif [ $n = 12 ] 
then
 cd properties/T-Banner_colors
 cat solarized-light > $HOME/.termux/colors.properties
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying changes \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 echo
 sleep 2
 break
 elif [ $n = 13 ] 
then
 cd properties/T-Banner_colors
 cat white-on-black > $HOME/.termux/colors.properties
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying changes \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 echo
 sleep 2
 break
  elif [ $n = 14 ] 
then
echo
tmuxcolor="$HOME/.termux/colors.properties"
if [ -f "$tmuxcolor" ];
then
 rm $HOME/.termux/colors.properties
else
 echo
fi
 echo
 echo -e "\e[33m>> Setting theme \e[m"
 sleep 2
 echo
 echo -e "\e[33m>> Applying theme as default \e[m"
 sleep 3
 echo 
 echo -e "\e[33m>> Done \e[m"
 echo
 sleep 2
 break
else
 echo -e  "\e[33m[\e[31m!\e[33m]\e[31m Invalid option try again \e[m"
 sleep 2
 clear
fi
done

# T-Banner Cursor
# A user can set a cursor as demanded

# cursor()
clear
while :
do
echo 
echo
echo "==========================" |lolcat
echo "    Set T-Banner cursor" | lolcat -t
echo "==========================" |lolcat
echo
echo "1] Block >> ' ▌ ' " | lolcat -t
echo
echo "2] Underline >> ' _ ' " |lolcat -t
echo
echo "3] Bar >> ' | ' " | lolcat -t
echo
echo

read -p $'\e[32m[\e[31m*\e[32m]\e[96m Enter your choice : ' choice
echo 
if [ $choice = 1 ]
then
echo ">> Setting cursor" |lolcat -t
sleep 2
echo
echo ">> Reloading settings" |lolcat -t
sleep 3
echo
echo ">> Done" |lolcat -t
sleep 2
echo "echo -e '\e[2 q' " >> ${PREFIX}/etc/bash.bashrc
break
elif [ $choice = 2 ]
then
echo ">> Setting cursor" |lolcat -t
sleep 2
echo
echo ">> Reloading settings" |lolcat -t
sleep 3
echo
echo ">> Done" |lolcat -t
sleep 2
echo "echo -e '\e[4 q' " >> ${PREFIX}/etc/bash.bashrc
break
elif [ $choice = 3 ]
then
echo ">> Setting cursor" |lolcat -t
sleep 2
echo
echo ">> Reloading settings" |lolcat -t
sleep 3
echo
echo ">> Done" |lolcat -t
sleep 2
echo "echo -e '\e[6 q' " >> ${PREFIX}/etc/bash.bashrc
break
else 
echo
echo -e  "\e[33m[\e[31m!\e[33m]\e[31m Invalid option try again \e[m"
sleep 3
clear
fi
done
tput cnorm

# save a session shortcut
# dir checker

if [ -f ~/.termux/termux.properties ]
then 
echo
else 
touch  ~/.termux/termux.properties
fi 

# shortut
clear
echo 
echo
echo -e "\e[36m================================\e[m"
echo -e "\e[32m            NOTE \e[m" 
echo -e "\e[36m================================\e[m" 
echo
echo -e "\e[34m[\e[31m*\e[34m]\e[32m T-Banner has created a session shortcut\e[m" 
echo 
echo -e "\e[36m[\e[32m*\e[36m]\e[32m New session shortcut ---> CTRL + n \e[m"
echo 
echo -e "\e[36m[\e[32m*\e[36m]\e[32m Next session shortcut ---> CTRL + l \e[m"
echo 
echo -e "\e[36m[\e[32m*\e[36m]\e[32m Previous session shortcut ---> CTRL + p \e[m"
echo 

echo -en "\e[36m[\e[32m*\e[36m]\e[93m Do you wish to make shortcut changes (y/n)? \e[m "
read answer
echo
if [ "$answer" != "${answer#[Yy]}" ]
then
echo "shortcut.create-session = ctrl + n
shortcut.next-session = ctrl + l
shortcut.previous-session = ctrl + p" >> ~/.termux/termux.properties
echo
sleep 1
echo
echo ">> Shortcut has been applied successfully" |lolcat -t
sleep 5
else 
echo
echo ">> Shortcut not applied !! " |lolcat -t
sleep 2
fi


# USER DEFINE FONTS
# select option

# take action if dir !
cd $HOME
cd T-Banner/properties/T-Banner_fonts/
if [  -f ~/.termux/font.ttf ]
then 
echo 
else 
touch ~/.termux/font.ttf
fi 

clear
# start a while loop
while :
do 
clear
echo 
echo
echo "============================" |lolcat -t
echo "     select your Font       " |lolcat -t
echo "============================" |lolcat -t
echo
echo -e "\e[31m[\e[32m01\e[31m]\e[32m Best of T-Banner " 
echo -e "\e[31m[\e[32m02\e[31m]\e[32m Anonymous "
echo -e "\e[31m[\e[32m03\e[31m]\e[32m Robot "
echo -e "\e[31m[\e[32m04\e[31m]\e[32m DejaVu "
echo -e "\e[31m[\e[32m05\e[31m]\e[32m Fantasque "
echo -e "\e[31m[\e[32m06\e[31m]\e[32m FiraCode "
echo -e "\e[31m[\e[32m07\e[31m]\e[32m Ubuntu "
echo -e "\e[31m[\e[32m08\e[31m]\e[32m Monofur "
echo -e "\e[31m[\e[32m09\e[31m]\e[32m Courier-Prime "
echo -e "\e[31m[\e[32m10\e[31m]\e[32m Cursive"

echo
read -p $'\e[31m[\e[32m~\e[31m]\e[96m Select your font : \e[m' font
echo

tput civis

if [ $font = 1 ] || [ $font = 01 ]
then
cat "OpenDyslexic.ttf" > ~/.termux/font.ttf
echo "-->> changing termux font" |lolcat -t
sleep 2
echo
echo "-->> Reloading settings" |lolcat -t
sleep 3
echo
echo "-->> Done" |lolcat -t
sleep 2
break
elif [ $font = 2 ] || [ $font = 02 ]
then
cat "Anonymous-Pro.ttf" > ~/.termux/font.ttf
echo "-->> changing termux font" |lolcat -t
sleep 2
echo
echo "-->> Reloading settings" |lolcat -t
sleep 3
echo
echo "-->> Done" |lolcat -t
sleep 2
break
elif [ $font = 3 ] || [ $font = 03 ]
then
cat "Roboto.ttf" > ~/.termux/font.ttf
echo "-->> changing termux font" |lolcat -t
sleep 2
echo
echo "-->> Reloading settings" |lolcat -t
sleep 3
echo
echo "-->> Done" |lolcat -t
sleep 2
break
elif [ $font = 4 ] || [ $font = 04 ]
then
cat "DejaVu.ttf" > ~/.termux/font.ttf
echo "-->> changing termux font" |lolcat -t
sleep 2
echo
echo "-->> Reloading settings" |lolcat -t
sleep 3
echo
echo "-->> Done" |lolcat -t
sleep 2
break
elif [ $font = 5 ] || [ $font = 05 ]
then
cat "Fantasque.ttf" > ~/.termux/font.ttf
echo "-->> changing termux font" |lolcat -t
sleep 2
echo
echo "-->> Reloading settings" |lolcat -t
sleep 3
echo
echo "-->> Done" |lolcat -t
sleep 2
break
elif [ $font = 6 ] || [ $font = 06 ]
then
cat "FiraCode.ttf" > ~/.termux/font.ttf
echo "-->> changing termux font" |lolcat -t
sleep 2
echo
echo "-->> Reloading settings" |lolcat -t
sleep 3
echo
echo "-->> Done" |lolcat -t
sleep 2
break
elif [ $font = 7 ] || [ $font = 07 ]
then
cat "Ubuntu.ttf" > ~/.termux/font.ttf
echo "-->> changing termux font" |lolcat -t
sleep 2
echo
echo "-->> Reloading settings" |lolcat -t
sleep 3
echo
echo "-->> Done" |lolcat -t
sleep 2
break
elif [ $font = 8 ] || [ $font = 08 ]
then
cat "Monofur.ttf" > ~/.termux/font.ttf
echo "-->> changing termux font" |lolcat -t
sleep 2
echo
echo "-->> Reloading settings" |lolcat -t
sleep 3
echo
echo "-->> Done" |lolcat -t
sleep 2
break
elif [ $font = 9 ] || [ $font = 09 ]
then
cat "Courier-Prime.ttf" > ~/.termux/font.ttf
echo "-->> changing termux font" |lolcat -t
sleep 2
echo
echo "-->> Reloading settings" |lolcat -t
sleep 3
echo
echo "-->> Done" |lolcat -t
sleep 2
break
elif [ $font = 10 ] 
then
cat "cursive.ttf" > ~/.termux/font.ttf
echo "-->> changing termux font" |lolcat -t
sleep 2
echo
echo "-->> Reloading settings" |lolcat -t
sleep 3
echo
echo "-->> Done" |lolcat -t
sleep 2
break
else
echo
echo "\e[32m[\e[31m!\e[32m]\e[31m Invalid option Try again :\e[m"
sleep 3
fi
done
tput cnorm

# Like Subscribe Mamba Mentality
clear
tput clear
tput cup 3 30
echo -e "\e[44m Like \e[41m Subscribe \e[m"
tput cup 6 30
echo -e "\x1b[42m Mamba Mentality \x1b[m"
tput cup 9 0
echo -en "\e[93m what is your name : \e[m"
read answer
tput cup 12 22
echo -e "\e[104m hello! Open a New session!! $answer! \e[m"
tput cup 15 0
echo -en "\e[93m Have you subscribe my youtube channel (y/n)? \e[m "
read answer

if [ "$answer" != "${answer#[Yy]}" ] ;then
tput cup 17 21
    echo -e "\e[42m Thankyou for subscribing my youtube channel \e[m"
else
tput cup 17 23
    echo -e "\e[41m Please subsrcibe my youtube channel \e[m"
fi
tput cup 20 0
figlet -f slant "Mamba Mentality" |lolcat

#done setting up Termux terminal as a real hacker

# setting up making a changes to a termux
# Dir checker 
# dir=.termux
DIR="$HOME/.termux"
 if [ -d "$DIR" ]
then 
  echo
else
  mkdir $HOME/.termux
fi

#files checker
#file=termux.properties
FILE="$HOME/.termux/termux.properties"
if [ -f "$FILE" ]
then 
  echo
else
  cd $HOME/.termux/
  touch termux.properties
fi

# Termux bell characterstics
cd $HOME
echo "bell-character=ignore" >> /data/data/com.termux/files/home/.termux/termux.properties && termux-reload-settings
echo

#########################################################################
#                        T-Banner                                        #
#  simply changing this banner will not make you developer of this tool #
#########################################################################