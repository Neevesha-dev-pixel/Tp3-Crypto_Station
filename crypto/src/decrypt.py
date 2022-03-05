import sys
from cryptography.fernet import Fernet

with open('.key.key','rb') as filekey:
	code = filekey.read()

fernet = Fernet(code)

with open(sys.argv[1],'rb') as enc_file:
	cipher = enc_file.read()

original = fernet.decrypt(cipher)

with open(sys.argv[2],'wb') as dec_file:
	dec_file.write(original)
