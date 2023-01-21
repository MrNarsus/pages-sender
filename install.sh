#!/bin/bash

if [[ $(id -u) -eq 0 ]];then
	if [[ -z $(ls $HOME/.conifg/pages_sender) ]]; then
		mkdir -p $HOME/.config/pages_sender
		cp pages_sender.conf $HOME/.config/pages_sender
		fi 2>/dev/null
else
	printf "Run me as root \n"
	exit 0
fi
cp pages-sender /bin/pages-sender
chmod 775 /bin/pages-sender

crontab -l > out
echo "00 09 * * 1-5 pages-sender" >> out
crontab out
rm out
