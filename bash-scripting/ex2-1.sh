#!/usr/bin
mv $1 $2 | cd $2 && echo Moved to $2 | ls -a

# 1. A good place to start is to create a simple script which will accept #some command line arguments and echo out some details about them (eg, #how many are there, what is the second one etc).
