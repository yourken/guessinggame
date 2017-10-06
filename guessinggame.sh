#!/usr/bin/env bash
# File: guessinggame.sh

numFiles=$(ls -1|wc -l)
guessedNum=-1

function input
{
	echo "Guess the number of files in this dir:"
	read guessedNum
}

while true; 
do
	input

	if [[ $numFiles -eq $guessedNum ]]
	then
		echo -e "You are right!\nWell done!"
		break;

	elif [[ $numFiles -gt $guessedNum ]]	
	then
		echo "Your guess was too low..."
	else
		echo "Your guess was too high..."
	fi
done

