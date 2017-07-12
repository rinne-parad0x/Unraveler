#!/usr/bin/zsh

if [ $EUID -ne 0 ]; then
	echo "[-] You need to be root to install these scripts."
	exit 0
fi

chmod +x generate-shellcode.sh
chmod +x assemble.sh
chmod +x shellcode.py
chmod +x pyTest.py

cp generate-shellcode.sh /bin/generate-shellcode.sh
cp assemble.sh /bin/assemble.sh
cp shellcode.py /bin/shellcode.py
cp pyTest.py /bin/pyTest.py

echo "[+] Done!" 

echo "\nDescription - \n"
echo "generate-shellcode.sh - A zsh script to extract the opcodes from a binary using objdump an write it as a C char array."
echo "assemble.sh - A shell script to assemble and link assemble programs using nasm and ld for x64."
echo "pyTest.py - A python script to put generated shellcode into a C program and execute it."
echo "shellcode.py - A python file to use previously mentioned scripts to do all the work and finally test the shellcode."
