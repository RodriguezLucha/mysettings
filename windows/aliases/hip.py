import sys
import hashlib

full_path = sys.argv[1]

md5=hashlib.md5(open(full_path, 'rb').read()).hexdigest()
sha1=hashlib.sha1(open(full_path, 'rb').read()).hexdigest()
sha256=hashlib.sha256(open(full_path, 'rb').read()).hexdigest()

md5=md5.upper()
sha1=sha1.upper()
sha256=sha256.upper()

print(f"MD5: {md5}")
print(f"SHA1: {sha1}")
print(f"SHA256: {sha256}")
