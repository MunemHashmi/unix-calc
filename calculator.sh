#!/bin/bash

echo "Welcome to the Unix-based command-line calculator!"

# Read in the first number
read -p "Enter the first number: " num1

# Read in the second number
read -p "Enter the second number: " num2

# Display the available operations and read in the user's choice
echo "Select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter the number corresponding to your choice: " choice

# Perform the selected operation
case $choice in
    1)
        result=$((num1 + num2))
        operator="+"
        ;;
    2)
        result=$((num1 - num2))
        operator="-"
        ;;
    3)
        result=$((num1 * num2))
        operator="*"
        ;;
    4)
        if [ $num2 -eq 0 ]
        then
            echo "Error: Division by zero is not allowed."
            exit 1
        fi
        result=$(echo "scale=2; $num1 / $num2" | bc)
        operator="/"
        ;;
    *)
        echo "Invalid input. Please enter a number between 1 and 4."
        exit 1
        ;;
esac

# Print out the result of the calculation
echo "$num1 $operator $num2 = $result"
