import sys
from cryptography.fernet import Fernet

with open('.key.key','rb') as filekey:
	code = filekey.read()

fernet = Fernet(code)

with open(sys.argv[1],'rb') as file:
	raw = file.read()

cipher = fernet.encrypt(raw)

with open(sys.argv[2],'wb') as encrypted_file:
	encrypted_file.write(cipher)
