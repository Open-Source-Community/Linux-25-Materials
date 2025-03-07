#!/bin/bash

# Step 1: Take user input for both numbers
    read -p "Enter first number: " num1
    read -p "Enter second number: " num2

while true
do
    # Step 2: Display the available operations

    echo "Select an operation:"
    echo "1) Addition"
    echo "2) Subtraction"
    echo "3) Multiplication"
    echo "4) Division"
    echo "5) Exit"

    # Step 3: Take user input for the selected operation
    read -p "Enter your choice (1-5): " choice

    # Step 4: Define functions for each arithmetic operation
    add() 
    {
        echo "Result: $((num1 + num2))"
    }

    subtract() 
    {
        echo "Result: $((num1 - num2))"
    }

    multiply() 
    {
        echo "Result: $((num1 * num2))"
    }

    divide() 
    {
        if [ "$num2" -eq 0 ]; then
            echo "Error: Division by zero is not allowed."
        else
            echo "Result: $((num1 / num2))"
        fi
    }

    # Step 5: Use a case statement to call the appropriate function
    case $choice in
        1) add ;;
        2) subtract ;;
        3) multiply ;;
        4) divide ;;
        5) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice. Please enter a number between 1 and 5." ;;
    esac
done
