#!/bin/bash

#this script is used to create the script with proper details

#there are two impartant options in read,-p promt to get user data 
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

# In every script we must be mention the usage of script like how to use the scrip,validate user is passing required argument or not and 
#even  pass argument unorder format,read the value based on the option passed from user

#refer the 23.getopts.sh file

# -a option in read is used to store word read into sequential indices of array variable 

read -p "Enter your details with space seperated: " -a my_details

echo "accessing the values present in array ${my_details[@]}"

echo "accessing the keys present in array ${!my_details[@]}"

#have many other options in read like -d is used to mention delimcontinue until the first character of DELIM is read, rather than newline
