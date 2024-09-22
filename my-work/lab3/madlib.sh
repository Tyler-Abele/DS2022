#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name a type of ball (used for sports): " NOUN1
read -p "2. Name the most common emotion you feel when you watch your favorite sports team: " ADJECTIVE1
read -p "3. Name an activity you do when you are on a track: " VERB1
read -p "4. Name an adverb that describes how players perform in a sport of your choice: " ADVERB1
read -p "5. Name a type of equipment used for any sport: " NOUN2
read -p "6. Provide a verb that describes what you do when you watch sports: " VERB2
read -p "7. Provide an abjective that describes the best weather for playing sports: " ADJECTIVE2
read -p "8. If you could be on a professonal sports team, what city would you want to be based out of: " NOUN3

echo " "
echo "Once upon a time in a busling city of $NOUN3, the most exciting sport of all time was played with a $NOUN1."
echo "The players always performed $ADVERB1, but everytime they lost, the fans were filled with $ADJECTIVE1."
echo "One day, the team showed up with nothing but a $NOUN2, which caused the fans to $VERB2!"
echo "During the game, the players would frequently $VERB1,  while the $ADJECTIVE2 made the whole experience unforgettable."
echo "If only every sport could be played in $NOUN3, where all games have the perfect balance of $ADJECTIVE2 weather, unpredictable equipment, and crazy crowd reactions!" 
