#!/bin/bash

mkdir -p include
mkdir -p src

if [ $# -eq 0 ]; then
    name=main
else
    name=$1
fi

touch $name.cpp

cat <<EOT>> $name.cpp
#include<iostream>

using namespace std;

int main(){

    return 0;
}
EOT
