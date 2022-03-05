#!/bin/bash

cd ../service/toCrypt/

if [[ ! -f "../service/toCrypt/*.txt" ]];
then
	cd ../../src/
	python3 encrypt.py ../service/toCrypt/*.txt ../service/Crypted/cipher.txt
	cp ../service/Crypted/cipher.txt ../service/toDecrypt/cipher-to-decrypt.txt
	cd ../service/toCrypt/
	rm *.txt
else
	echo "There is no data in this directory"
fi
