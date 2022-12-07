#!/usr/bin/env python
import hashlib
import string
import sys
import csv

# sys.stdout.write("{")
# for letter in (string.ascii_letters + string.digits +'?' + '!'):
#     str = letter
#     result = hashlib.sha1(str.encode())
#     sys.stdout.write("\n\"" + result.hexdigest() + "\": \"" + letter + "\",")

# for letter1 in (string.ascii_letters + string.digits +'?' + '!'):
#     for letter2 in (string.ascii_letters + string.digits +'?' + '!'):
#         str = letter1+letter2
#         result = hashlib.sha1(str.encode())
#         sys.stdout.write("\n\"" + result.hexdigest() + "\": \"" + str + "\",")

# for letter1 in (string.ascii_letters + string.digits +'?' + '!'):
#     for letter2 in (string.ascii_letters + string.digits +'?' + '!'):
#         for letter3 in (string.ascii_letters + string.digits +'?' + '!'):
#             str = letter1+letter2+letter3
#             result = hashlib.sha1(str.encode())
#             sys.stdout.write("\n\"" + result.hexdigest() + "\": \"" + str + "\",")

# for letter in (string.ascii_letters + string.digits +'?' + '!'):
#     str = letter
#     result = hashlib.sha256(str.encode())
#     sys.stdout.write("\n\"" + result.hexdigest() + "\": \"" + letter + "\",")

# for letter1 in (string.ascii_letters + string.digits +'?' + '!'):
#     for letter2 in (string.ascii_letters + string.digits +'?' + '!'):
#         str = letter1+letter2
#         result = hashlib.sha256(str.encode())
#         sys.stdout.write("\n\"" + result.hexdigest() + "\": \"" + str + "\",")

# for letter1 in (string.ascii_letters + string.digits +'?' + '!'):
#     for letter2 in (string.ascii_letters + string.digits +'?' + '!'):
#         for letter3 in (string.ascii_letters + string.digits +'?' + '!'):
#             str = letter1+letter2+letter3
#             result = hashlib.sha256(str.encode())
#             sys.stdout.write("\n\"" + result.hexdigest() + "\": \"" + str + "\"")
#             if str != "!!!":
#                 sys.stdout.write(",")

# sys.stdout.write("\n}")

#---------------------------------------
#.CSV
#---------------------------------------

print("shaHash,password")

for letter in (string.ascii_letters + string.digits +'?' + '!'):
    str = letter
    result = hashlib.sha1(str.encode())
    print(result.hexdigest() + "," + str)

for letter1 in (string.ascii_letters + string.digits +'?' + '!'):
    for letter2 in (string.ascii_letters + string.digits +'?' + '!'):
        str = letter1+letter2
        result = hashlib.sha1(str.encode())
        print(result.hexdigest() + "," + str)

for letter1 in (string.ascii_letters + string.digits +'?' + '!'):
    for letter2 in (string.ascii_letters + string.digits +'?' + '!'):
        for letter3 in (string.ascii_letters + string.digits +'?' + '!'):
            str = letter1+letter2+letter3
            result = hashlib.sha1(str.encode())
            print(result.hexdigest() + "," + str)

for letter in (string.ascii_letters + string.digits +'?' + '!'):
    str = letter
    result = hashlib.sha256(str.encode())
    print(result.hexdigest() + "," + str)

for letter1 in (string.ascii_letters + string.digits +'?' + '!'):
    for letter2 in (string.ascii_letters + string.digits +'?' + '!'):
        str = letter1+letter2
        result = hashlib.sha256(str.encode())
        print(result.hexdigest() + "," + str)

for letter1 in (string.ascii_letters + string.digits +'?' + '!'):
    for letter2 in (string.ascii_letters + string.digits +'?' + '!'):
        for letter3 in (string.ascii_letters + string.digits +'?' + '!'):
            str = letter1+letter2+letter3
            result = hashlib.sha256(str.encode())
            print(result.hexdigest() + "," + str)