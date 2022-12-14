### Simple tools for C++ development in UNIX

***

#### How to use?

__./init.sh__ <name\> will create a name.cpp file _(with a basic template)_

- If name is left blank, the file will be called main
- No need to include .cpp extension in the argument, just the desired name

__./compRun.sh__ <input\> <output\> will compile and run the project including all header and source files

- Calling it without any arguments will result in it compiling main.cpp to testRun
- Calling it with one argument _(output)_ will result in it compiling main.cpp to <output\>
- Calling it with two arguments will result in it compiling <input\>.cpp to <output\>
- No need to include .cpp extension in the argument, just the desired name

__./newClass.sh__ <className\> will create className.h in /include and className.cpp in /src
_(also including basic templates)_


***

If you want to modify the class templates please make sure to use (1) tab before each c++ line and then complete the ones you want with spaces

[_<<\- operator will ignore all tabs and include all spaces_](https://www.gnu.org/software/bash/manual/bash.html#Here-Documents)
