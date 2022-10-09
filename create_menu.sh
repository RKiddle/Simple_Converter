#!/usr/bin/bash

echo "Welcome to the Simple converter!"


while true;
    do
        echo "Select an option"
        echo "0. Type '0' or 'quit' to end program"
        echo "1. Convert units"
        echo "2. Add a definition"
        echo "3. Delete a definition"

        read -r menu_choice

        case "${menu_choice}" in
            0 | 'quit')     
                echo "Goodbye!"
                exit
                ;;
            1)     
                echo "Not implemented!"
                ;;
            2)     
                echo "Not implemented!"
                ;;
            3)     
                echo "Not implemented!"
                ;;
            *) 
                echo "Invalid option!"
        esac
    done



echo "Enter a definition:"

read -a user_input
arr_length="${#user_input[@]}"
definition="${user_input[0]}"
constant="${user_input[1]}"
constant_2="${user_input[2]}"

# echo "$arr_length" 
# echo "$definition" 
# echo "$constant" 

re="^[a-z]+_to_[a-z]+$"

red="^[+-]?[0-9]+\.?[0-9]*$"


if [[ "$definition" =~ $re ]] && [[ "$constant" =~ $red ]] && [[  -z "$constant_2" ]]; then
    echo "Enter a value to convert:"

    while true; do
    
        read value
        #value="${user_input[2]}"
        if [[ "$value" =~ $red ]]; then
            echo "Result: $(bc -l <<<$value*$constant )"
            break
        else
            echo "Enter a float or integer value!"
        fi
    done

else
    echo "The definition is incorrect!"
fi
