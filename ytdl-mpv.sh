#!/bin/sh

#youtube-dl --list-formats $2
#echo $#
if [ $# -eq 2 ]
then
case $1 in
    480)mpv --ytdl --ytdl-format=244+251 $2;;
    720)mpv --ytdl --ytdl-format=247+251 $2;;
    audio)mpv --ytdl --ytdl-format=251 $2;;
    360)mpv --ytdl --ytdl-format=243+250 $2;;
    *)youtube-dl --list-formats $1;;
esac

else
  echo "list formats?"  
  read lf   
    case $lf in
    y)youtube-dl --list-formats $1;;
    *)echo "Enter video code";
      read  v;
      echo "Enter audio code";
      read a;
      mpv --ytdl --ytdl-format=$v+$a $1;;
esac
fi




#mpv --ytdl --ytdl-format=$1+$2 $3

#mpv --ytdl --ytdl-format=247+251 $3
