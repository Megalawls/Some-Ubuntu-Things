#!/bin/bash
echo "Single or Two Player? enter 2 for two player, anything else for one player"
read players
echo "Player 1: Pick Rock, Paper, or Scissors (1, 2, or 3 respectively)"
read choice

if [[ $players == 2 ]]; then
echo "Player 2: Pick Rock, Paper, or Scissors (1, 2, or 3 respectively)"
read compchoice ##Makes it two player, make this a choice
else
compchoice=$(shuf -i 1-3 -n 1)
fi

if [[ $choice == $compchoice ]]; then
	echo "Draw, both Players chose $choice"
elif [ ! $choice == 1 ] && [ ! $choice == 2 ] && [ ! $choice == 3 ]; then
	echo "Not a choice, pick 1, 2 or 3"
	bash Janken.sh
elif [ ! $compchoice == 1 ] && [ ! $compchoice == 2 ] && [ ! $compchoice == 3 ]; then
	echo "Not a choice, pick 1, 2 or 3"
	bash Janken.sh
else
case "$choice" in
"1")
	if [[ $compchoice == 2 ]]; then
		echo "P1 lost, P2 chose Paper"
	elif [[ $compchoice == 3 ]]; then
		echo "P1 wins, P2 chose Scissors"
	fi
;;
"2")
	if [[ $compchoice == 1 ]]; then
		echo "P1 wins, P2 chose Rock"
	elif [[ $compchoice == 3 ]]; then
		echo "P1 lost, P2 chose Scissors"
	fi
;;
"3")
	if [[ $compchoice == 1 ]]; then
		echo "P1 lost, P2 chose Rock"
	elif [[ $compchoice == 2 ]]; then
		echo "P1 wins, P2 chose Paper"
	fi
esac
fi

echo "Play again? enter y if yes, anything else if no"
read again
if [[ $again == y ]]; then
	bash Janken.sh
fi

