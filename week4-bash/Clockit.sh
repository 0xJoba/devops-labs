#!/bin/bash

# --- COLORS ---
# We use escape codes to make the text pop!
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# --- INITIALIZATION ---
clear
echo -e "${YELLOW}=======================================${NC}"
echo -e "      WELCOME TO THE BASH ARENA        "
echo -e "${YELLOW}=======================================${NC}"

echo "Enter your name, Tarnished:"
read name

# --- LOGIC: Checking Name Length ---
if [[ ${#name} -le 2 ]]; then
    echo "Your name is too short to be etched in stone. Using 'Stranger' instead."
    name="Stranger"
fi

echo -e "\nWelcome to the Arena, ${GREEN}$name${NC}."

# --- ARRAYS: Storing Enemies ---
# This is a compound data structure to study!
enemies=("Margit" "Godrick" "Radahn" "Malenia")

echo "Today you face the gauntlet of ${#enemies[@]} bosses."
echo "---------------------------------------"

# --- LOOP: Cycling through the enemies ---
for boss in "${enemies[@]}"; do
    echo -e "\nA wild ${RED}$boss${NC} appears!"
    
    # Generate random number for this specific battle
    beast_roll=$(( $RANDOM % 2 ))
    
    echo "Predict the strike! (0 or 1):"
    read player_guess

    # Check if input is a number (Basic validation)
    if [[ ! $player_guess =~ ^[0-9]+$ ]]; then
        echo "Panic! You fumbled your weapon! (Invalid input)"
        exit 1
    fi

    if [[ $beast_roll -eq $player_guess ]]; then
        echo -e "${GREEN}SUCCESS!${NC} You parried $boss."
    else
        echo -e "${RED}YOU DIED.${NC}"
        echo "Slain by $boss. Better luck next time, $name."
        exit 1
    fi
    
    sleep 1
done

# --- SUCCESS FINALE ---
echo -e "\n${YELLOW}*** LEGEND STATUS ACHIEVED ***${NC}"
echo "Congratulations, $name. You cleared the Arena!"
