#!/usr/bin/env python

from sys import argv, exit
from os import system

if len(argv) != 2:
	print("Give an arg")
	exit(1)

prog = argv[1]

ret = system("assemble.sh %s" % prog)

ret = ret >> 8

if ret == 1:
	print("[-] Error in assembling. Fix that before continuing.")
	exit(2)

print("[+] Assembling done.")

if ret == 2:
	print("[-] Error in linking. Fix that before continuing.")
	exit(3)

print("[+] Linking done.")

print("[+] Extracting the shellcode..")
print("[+] Compiling the shellcode and running it....")

system("pyTest.py `generate-shellcode.sh ./%s`" % prog)

print("[+] Done! ")