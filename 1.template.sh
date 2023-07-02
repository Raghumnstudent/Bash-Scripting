#!/bin/bash

#this script is used to create the script with proper details

read -p "Enter the file name: " file_name
read -p "Enter your name: " name
read -p "Enter Purpose of the Script: " purpose
echo "#!/bin/bash" > $PWD/$file_name.sh
chmod +x $PWD/$file_name.sh
echo "#Author: $name" >> $PWD/$file_name.sh
echo "#Vesrion: " >> $PWD/$file_name.sh
echo "#Purpose: $purpose" >> $PWD/$file_name.sh
echo "#Created date: `date`" >> $PWD/$file_name.sh
echo "#Modified date: " >> $PWD/$file_name.sh
