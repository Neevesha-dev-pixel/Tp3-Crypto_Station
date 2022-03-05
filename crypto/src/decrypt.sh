#!/bin/bash

cd ../service/toDecrypt/

if [[ ! -f "../service/toDecrypt/data-to-decrypt.txt" ]];
then
        cd ../../src/
        python3 decrypt.py ../service/toDecrypt/cipher-to-decrypt.txt ../service/Decrypted/decrypted-raw.txt
	cd ../service/toDecrypt/
	rm cipher-to-decrypt.txt
else
        echo "There is no data in this directory"
fi

