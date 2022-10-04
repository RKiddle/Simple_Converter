#!/usr/bin/bash
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
    echo "The definition is correct!"
else
    echo "The definition is incorrect!"
fi
