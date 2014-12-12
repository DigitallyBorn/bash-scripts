#!/bin/sh

for (( ; ; ))
do
	song=$(curl -s http://www.last.fm/user/digitallyborn | grep -A 1 subjectCell | sed -e 's#<[^>]*>##g' | head -n2 | tail -n1 | sed 's/^[[:space:]]*//g')
	echo "$song" > lastfm_song.txt
	echo "$song"
	sleep 30
done
