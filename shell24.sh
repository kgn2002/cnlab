#!/bin/bash

while true
do
    echo "--------------------------------------"
    echo "MENU"
    echo "1. Display contents of /etc/passwd"
    echo "2. Show present working directory"
    echo "3. List all files with write permission for all"
    echo "4. Display total number of lines in a file"
    echo "5. Exit"
    echo "--------------------------------------"
    echo "Enter your choice:"
    read choice

    case $choice in
        1)
            cat /etc/passwd
            ;;
        2)
            pwd
            ;;
        3)
            chmod 222 * | ls -l 
            ;;
        4)
            echo "Enter file name:"
            read filename
            if [[ -f $filename ]]
            then
                wc -l < "$filename"
            else
                echo "File not found!"
            fi
            ;;
        5)
            echo "Exiting..."
            exit 0
            break
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac
done
