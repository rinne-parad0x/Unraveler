#!/usr/bin/env python

from sys import argv, exit
from os import getcwd, system

if len(argv) != 2:
	exit(1)

shellcode = argv[1]

c_code = """#include <stdio.h>

unsigned char shellcode[] = "%s";

int main(){
		
	void (*ret)();

	ret = (void (*)())shellcode; 
	
	ret();

	return 0;
}

""" % shellcode

file = open("test_shellcode.c", "w")

file.write(c_code)

file.close()

system("gcc -o test_shellcode test_shellcode.c -z execstack")

system("./test_shellcode")