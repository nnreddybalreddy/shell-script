#!/bin/bash

echo "all:::$@"
echo "No : $#"
echo "script  name: $0"
echo "$PWD"
echo "$USER"
echo "$HOSTNAME"
echo "$HOME"

echo "pid: $$"
sleep 60 &
echo "backgroud pid:$!"
