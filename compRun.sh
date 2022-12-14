#!/bin/bash

if [ $# -eq 0 ]; then
	g++ main.cpp ./src/*.cpp -o testRun -I./include
	./testRun
elif [ $# -eq 1 ]; then
	g++ main.cpp ./src/*.cpp -o $1 -I./include
	./$1
else
	g++ $1.cpp ./src/*.cpp -o $2 -I./include
	./$2
fi
