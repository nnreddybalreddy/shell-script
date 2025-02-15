#!/bin/bash

PERSON1=$1
PERSON2=$2

echo "Hello world"
echo "$PERSON1:::$PERSON2"

echo "Enter username:::"
read -s USERNAME

echo "Enter password::::"
read -s PASSWORD

echo "$USERNAME,$PASSWORD"

