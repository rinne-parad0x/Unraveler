# Unraveler

Unraveler is a collection of some scripts automoate the task of shellcode writing and testing by doing assembling, linking, extracting shellcode, putting it in a C file, compiling and then running it. Usually so many repetitive tasks tend to consume too much time and therefore this project does that in an instant.

#  Features!

With one command, it 
  - Assembles the assembly code.
  - Links the assembled code into an object file.
  - Extracts the opcodes (using objdump) and writes it into the form of a C char array to be used.
  - Puts it into a C file, compiles the file.
  - Runs the shellcode so you can see it.

### Installation

Unraveler requires [nasm](http://www.nasm.us/), [Python](https://www.python.org/) (which comes by default in most linux distro) and [zsh](http://www.zsh.org/) to run.

Install the dependencies.

### On Ubuntu 
```sh
$ sudo apt install nasm zsh
```

### On Arch Linux

```sh
$ sudo pacman -S zsh nasm
```

# Scripts
>generate-shellcode.sh - A zsh script to extract the opcodes from a binary using objdump an write it as a C char array.

>assemble.sh - A shell script to assemble and link assemble programs using nasm and ld for x64.

>pyTest.py - A python script to put generated shellcode into a C program and execute it.

>shellcode.py - A python file to use previously mentioned scripts to do all the work and finally test the shellcode.

>install.sh - Shell script to install previously mentioned scripts into /bin

### Todos
I made this for my personal use, to aid myself. I generally use Arch so if it breaks on Ubuntu (right now it isn't thankfully), you are welcome to either point it out or do yourself.
 - Add more functionallty. 
