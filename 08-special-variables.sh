#!/bin/bash

echo "all: $@"
echo "no of variables: $#"
echo "script name:$0"
echo "PWD:$PWD"
echo "Home:$HOME"
echo "User::$USER"
echo "HOSTname:$HOSTNAME"
echo "pid:$$"
sleep 60 &
echo "PID of last back ground $!" 