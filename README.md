This script cuts 10 pages daily from a book and sends them to me on my telegram channel at 10 am.  This method helps me read big books by breaking them down into smaller pieces every day.

# Requirements



The script requires the `qpdf` and `crontab` packages, install them via your distribution's package manager.  After installing crontab enable the service via systemd if you are using it, or any other init system, for example: runit, openrc.



Also You need a telegram channel and a bot, through the bot we will send the pages of the book, and the channel will be our repo where we store the pages.  Make sure to copy the channel ID and bot token, as we will need it later.


It is preferable to run this script on a server to work without the need to turn on your computer 24 hours, or you can turn on your computer 10 minutes or less before the specified period to send you pages and then shutdown it.


# How to use

The configuration are in the file: `pages_sender.conf` for modification.  The variable `bot_token` is responsible for storing the bot token, And the variable `ch_id` is responsible for storing channel ID, and the variable `path_of_book` is responsible for storing the path of the book whose pages you want to cut.



Put your bot's token in place of none after the equal sign, and channel ID in place of none, put the book's path in its variable after the equal sign as well, and make sure that after the equal sign is completely glued to it.


This is a example about my confirmation file: 

```

# Replace 'none' with your bot token 
bot_token=9292716:AAiajsj05sbnayhyGekekXckuHOiU

# Replace 'none' with channel id you want to send pages to her (the bot must be admin to send messages.)
ch_id=-1001692708267

# Replace 'none' with your path of book you need to send pages from it.
path_of_book=/home/MrNarsus/Documents/linux.pdf

# Dont touch this value
pages=1

```


To change the time you want pages to be sent, edit the sixteenth line in the `install.sh` file, and replace the 10 clock with your desired clock.

  
After completing the previous steps, type in the terminal:
  
`sudo bash install.sh`


If you want to change the number of pages you want to cut daily, Modify the file `pages-sender`:

`sudo vim /bin/pages-sender`

And Modify the number 10 in line 31:

`today_pages=$(($pages+10))`

If you set it to 20, it will send you 20 pages daily.


Note: If you don't run `install.sh` file, you can edit it (pages-sender) directly.

You will find texts in Arabic within the script, you can change them. Don't worry.

For any improvements or issues with the script please let me know, thank you!