#!/bin/bash
echo Hello! A few questions.
echo What\'s your first name? :
read -p 'First Name: ' firstName
echo What\'s your last name? :
read -p 'Last Name: ' lastName
echo What is your mode of transportation? :
read -p 'I get around via: ' modeOfTrans
echo
echo $firstName $lastName gets around via $modeOfTrans .
