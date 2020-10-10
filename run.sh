#!/usr/bin/env bash

title1="skillshape-frontend"
title2="skillshape-backend"
title3="skillshape-new-frontend"

develop="git checkout develop"
pull="git pull"

start1="npm start"
start2="npm run start:dev"

cmd1="cd $title1; $pull; $start1"
cmd2="cd $title2; $pull; $start1"
cmd3="cd $title3; $pull; $start2"

if [ "$1" == "develop" ]
then
	cmd1="cd $title1; $develop; $pull; $start1"
	cmd2="cd $title2; $develop; $pull; $start1"
	cmd3="cd $title3; $develop; $pull; $start2"
fi

gnome-terminal --tab --title="$title1" --command="bash -c '$cmd1; $SHELL'" \
               --tab --title="$title2" --command="bash -c '$cmd2; $SHELL'" \
							--tab --title="$title3" --command="bash -c '$cmd3; $SHELL'" \ &> /dev/null
