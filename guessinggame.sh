#!/bin/bash

# Function to count files in the current directory
count_files() {
    ls -1 | wc -l
}

# Main game function
play_game() {
    local file_count=$(count_files)
    local guess=-1
    local attempts=0

    echo "Welcome to the Guessing Game!"
    echo "================================"

    while [ "$guess" -ne "$file_count" ]; do
        echo "How many files are in the current directory?"
        read -p "Enter your guess: " guess

        if [ "$guess" -lt "$file_count" ]; then
            echo "Your guess is too low. Try again!"
        elif [ "$guess" -gt "$file_count" ]; then
            echo "Your guess is too high. Try again!"
        else
            echo "================================"
            echo "🎉 Congratulations! You guessed correctly!"
            echo "The number of files is: $file_count"
            echo "================================"
        fi

        ((attempts++))
    done

    echo "It took you $attempts attempts to get it right!"
}

# Call the main function
play_game
