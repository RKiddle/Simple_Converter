#!/usr/bin/bash

echo "Welcome to the Simple converter!"

touch definitions.txt

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
                while true;
                    do
                        echo "Enter a definition:"
        
                        read -a user_input
                        arr_length="${#user_input[@]}"
                        definition="${user_input[0]}"
                        constant="${user_input[1]}"
                        constant_2="${user_input[2]}"
                        
                        re="^[a-z]+_to_[a-z]+$"
                        
                        red="^[+-]?[0-9]+\.?[0-9]*$"
                        
                        
                        if [[ "$definition" =~ $re ]] && [[ "$constant" =~ $red ]] && [[  -z "$constant_2" ]]; then
                            echo "($user_input)" >> definitions.txt
                            break
                        else
                            echo "The definition is incorrect!"
                            
                        fi
                    done

                                ;;
            3)
                echo "Type the line number to delete or '0' to return"
                cat definitions.txt
                echo "Please add a definition first!"
                                ;;
            *) 
                echo "Invalid option!"
            esac
    done                       
           
