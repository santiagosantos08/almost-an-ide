#!/bin/bash

mkdir -p include
if [ -s ./include/$1.h ]; then
	echo "$1 header already exists"
else
	touch ./include/$1.h
	cat <<-EOT>> ./include/$1.h
	#ifndef ${1^^}_H
	#define ${1^^}_H

	class $1{
	    public:
	        $1();
	        virtual ~$1();

	    protected:

	    private:
	};

	#endif // ${1^^}_H
	EOT
fi

mkdir -p src
if [ -s ./src/$1.cpp ]; then
	echo "$1 cpp already exists"
else
	touch ./src/$1.cpp
	cat <<-EOT>> ./src/$1.cpp
	#include "$1.h"

	$1::$1(){
	    //ctor
	}

	$1::~$1(){
	    //dtor
	}
	EOT
fi
