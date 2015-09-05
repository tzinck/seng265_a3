#!/opt/bin/python3

import os
import sys

def encode(inputName):
    print("In encode_main")
    f_in = open(inputName, encoding = 'latin-1', mode = 'r', newline="")
    templist = list(inputName)
    templist.pop()
    templist.pop()
    templist.pop()
    templist.append('m')
    templist.append('t')
    templist.append('f')
    outputName = "".join(templist) 
    #f_out = open(outputName, encoding = 'latin-1', mode = "w")
    f_out = open('testFile.mtf', encoding = 'latin-1', mode = "w")
    
    f_out.write(chr(0xfa))
    f_out.write(chr(0xce))
    f_out.write(chr(0xfa))
    f_out.write(chr(0xdf))
    words = []
    for line in f_in:
        for x in line.split():
            if x in words:
                code = words.index(x)+1
                if code > 120: 
                    if code > 375:
                        f_out.write(chr(122 + 128))
                        f_out.write(chr((code - 376)//256))
                        f_out.write(chr((code - 376)%256))
                    else:
                        f_out.write(chr(121 + 128))
                        f_out.write(chr(code - 121))
                else:    
                    f_out.write(chr(128 + code))             
                words.insert(0, words.pop(words.index(x)))
           
            else:
                words.insert(0, x)
                code = len(words)
                if code > 120:
                    if code > 375:
                        f_out.write(chr(122 + 128))
                        f_out.write(chr((code - 376) // 256))
                        f_out.write(chr((code - 376) % 256))
                    else:
                        f_out.write(chr(121 + 128))
                        f_out.write(chr(code - 121))
                else:
                    f_out.write(chr(128 + code)) 
                f_out.write(x)
        f_out.write(chr(0x0a))     


def moveToFront(words, spot):
    word = words.pop(spot)
    words = [""] + [word] + words[1:]
    return words

                              
def decode(inputName):
    print("In decode_main")
    f_in = open(inputName, encoding = 'latin-1', mode = 'r', newline="")
    templist = list(inputName)
    templist.pop()
    templist.pop()
    templist.pop()
    templist.append('t')
    templist.append('x')
    templist.append('t')
    outputName = "".join(templist)
    #f_out = open (outputName, "w")
    f_out = open('testFile.txt', "w")
    
    testBytes = f_in.read(4)
    if not(testBytes[0] == chr(0xfa)):
        return
    if not(testBytes[1] == chr(0xce)):
        return
    if not(testBytes[2] == chr(0xfa)):
        return
    if not(testBytes[3] == chr(0xde)) and  not(testBytes[3] ==  chr(0xdf)):
        return
         
    words = [""]
    currentWord = ""
    separator = ""
    c = f_in.read(1)
    while True:
        if c == '':
            break
        elif c == '\n' and currentWord == "":
            f_out.write(c)
            separator = ""
        elif c == '\n' and not (currentWord == ""):
            words.append(currentWord)
            words = moveToFront(words, len(words)-1)
            f_out.write(separator)
            f_out.write(currentWord)
            f_out.write('\n')
            currentWord = ""
            separator = ""
        elif ord(c) > 128 and currentWord == "":
            if ord(c) >= 249:
                if ord(c) == 250:
                    c1 = f_in.read(1)
                    c2 = f_in.read(1)
                    code = ord(c2) + ord(c1)*256
                    code = code + 376
                    if code < len(words):
                        f_out.write(separator)
                        f_out.write(words[code])
                        words = moveToFront(words, code)
                        separator = " " 
                else:      
                    c = f_in.read(1)
                    code = ord(c) + 121
                    if code < len(words):
                        f_out.write(separator)
                        f_out.write(words[code])
                        words = moveToFront(words, code)
                        separator = " "                                       
            else:
                code = ord(c) - 128
                if code < len(words):
                    f_out.write(separator)
                    f_out.write(words[code])
                    words = moveToFront(words, code)
                    separator = " "
        elif ord(c) > 128 and not (currentWord == ""):
            words.append(currentWord)
            words = moveToFront(words, len(words) - 1)
            f_out.write(separator)
            f_out.write(currentWord)
            separator = " "
            currentWord = ""
            continue
        else:
            currentWord = currentWord + c
       
        c = f_in.read(1)
           
                

