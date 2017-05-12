#!/bin/bash
cat /usr/share/dict/words | head -n $(($RANDOM % $RANDOM)) | tail -1
#Create a script which will print a random word.
#There is a file containing a list of words on your system 
