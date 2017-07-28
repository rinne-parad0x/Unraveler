#!/usr/bin/zsh

nasm -f32 elf -o $1.o $1.asm 2> /dev/null

if [ $? -ne 0 ]; then
	exit 1
fi

ld -o $1 $1.o 2> /dev/null

if [ $? -ne 0 ]; then
	exit 2
fi

rm $1.o
