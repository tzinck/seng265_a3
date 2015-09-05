#!/usr/bin/bash

echo "Testing Decoding"

testsPassed=0

./mtfdecode.py tests/test01.mtf
if diff testFile.txt tests/test01.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test01"
fi

./mtfdecode.py tests/test02.mtf
if diff testFile.txt tests/test02.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test02"
fi
./mtfdecode.py tests/test03.mtf
if diff testFile.txt tests/test03.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test03"
fi
./mtfdecode.py tests/test04.mtf
if diff testFile.txt tests/test04.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test04"
fi
./mtfdecode.py tests/test05.mtf
if diff testFile.txt tests/test05.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test05"
fi
./mtfdecode.py tests/test06.mtf
if diff testFile.txt tests/test06.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test06"
fi
./mtfdecode.py tests/test07.mtf
if diff testFile.txt tests/test07.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test07"
fi
./mtfdecode.py tests/test08.mtf
if diff testFile.txt tests/test08.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test08"
fi

./mtfdecode.py tests/test09.mtf
if diff testFile.txt tests/test09.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test09"
fi
./mtfdecode.py tests/test00.mtf
if diff testFile.txt tests/test00.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test00"
fi
./mtfdecode.py tests/test10.mtf
if diff testFile.txt tests/test10.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test10"
fi
./mtfdecode.py tests/test11.mtf
if diff testFile.txt tests/test11.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test11"
fi
./mtfdecode.py tests/test12.mtf
if diff testFile.txt tests/test12.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test12"
fi
./mtfdecode.py tests/test13.mtf
if diff testFile.txt tests/test13.txt> /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test13"
fi
./mtfdecode.py tests/test14.mtf
if diff testFile.txt tests/test14.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test14"
fi

./mtfdecode.py tests/test15.mtf
if diff testFile.txt tests/test15.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test15"
fi
./mtfdecode.py tests/test16.mtf
if diff testFile.txt tests/test16.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test16"
fi
./mtfdecode.py tests/test17.mtf
if diff testFile.txt tests/test17.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test17"
fi
./mtfdecode.py tests/test18.mtf
if diff testFile.txt tests/test18.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test18"
fi
./mtfdecode.py tests/test19.txt
if diff testFile.txt tests/test19.txt > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test19"
fi

echo "Done Testing"
echo "Passed:"
echo "$testsPassed"









