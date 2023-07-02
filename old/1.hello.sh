#!/bin/bash   
# defining the which shell(interpreter), i am going to use

#section 1 --> comments and using varibales
#this is comment
SECONDS=0
echo "Hello, I am Raghu" #echo is used to describe you script to understand others

#system varibales
echo "our home directory is $HOME"
echo our bash name is $BASH
echo our bash version is $BASH_VERSION
echo our present working directory is $PWD

#user defined variables,varibles can't start with number
name="Raghu M N"
VILLAGE="Malavalli"
Pin=567430
echo my name is $name
echo my village is $VILLAGE
echo my village pin is $Pin

timeout  10m echo "Hello"
echo "Time taken to run this script is $SECONDS seconds"

echo "Time taken to run this script is $SECONDS/60 minutes"
