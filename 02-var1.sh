#!/bin/bash
movies=("RRR" "YYY" "RAGHHU")

echo "${movies[0]}"
echo "all: ${movies[$@]}"

