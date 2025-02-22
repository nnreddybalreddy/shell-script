#!/bin/bash

# COURSE="DEVOPS"
# echo "Course in current scirpt:$COURSE"
# echo "PID of current script:$$"


# source ./16-other.sh 
# echo "Course after other script:$COURSE"

COURSE="DEVOPS"
echo "current: $COURSE"
echo "PID of current script:$$"


./16-other.sh 

echo "Course after other script:$COURSE"