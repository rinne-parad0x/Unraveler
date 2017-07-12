Unraveler is a collection of some scripts automoate the task of shellcode writing and testing by doing assembling, linking, extracting shellcode, putting it in a C file, compiling and then running it. Usually so many repetitive tasks tend to consume too much time and therefore this project does that in an instant.

Script - Use

generate-shellcode.sh - A zsh script to extract the opcodes from a binary using objdump an write it as a C char array.

assemble.sh - A shell script to assemble and link assemble programs using nasm and ld for x64.

pyTest.py - A python script to put generated shellcode into a C program and execute it.

shellcode.py - A python file to use previously mentioned scripts to do all the work and finally test the shellcode.

install.sh - Shell script to install previously mentioned scripts into /bin 
