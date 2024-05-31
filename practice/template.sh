#! /bin/bash

read -p "Enter file name: " filename

read -p "Enter author name: " name

read -p "purpose of script: " purpose


touch $filename.sh

chmod +x $filename.sh

echo "#!/bin/bash" > "$filename.sh"
echo "Author name is $name" >> "$filename.sh"
echo "Purpose of sctipt: $purpose" >> "$filename.sh"

echo "modified date is `date +%F`" >>  "$filename.sh"

