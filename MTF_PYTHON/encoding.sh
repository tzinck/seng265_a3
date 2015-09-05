#!/usr/bin/bash

echo "Testing Encoding"

testsPassed=0

./mtfencode.py tests/test01.txt
if diff testFile.mtf tests/test01.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test01"
fi

./mtfencode.py tests/test02.txt
if diff testFile.mtf tests/test02.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test02"
fi
./mtfencode.py tests/test03.txt
if diff testFile.mtf tests/test03.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test03"
fi
./mtfencode.py tests/test04.txt
if diff testFile.mtf tests/test04.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test04"
fi
./mtfencode.py tests/test05.txt
if diff testFile.mtf tests/test05.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test05"
fi
./mtfencode.py tests/test06.txt
if diff testFile.mtf tests/test06.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test06"
fi
./mtfencode.py tests/test07.txt
if diff testFile.mtf tests/test07.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test07"
fi
./mtfencode.py tests/test08.txt
if diff testFile.mtf tests/test08.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test08"
fi
./mtfencode.py tests/test09.txt
if diff testFile.mtf tests/test09.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test09"
fi
./mtfencode.py tests/test00.txt
if diff testFile.mtf tests/test00.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test00"
fi
./mtfencode.py tests/test10.txt
if diff testFile.mtf tests/test10.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test10"
fi
./mtfencode.py tests/test11.txt
if diff testFile.mtf tests/test11.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test11"
fi
./mtfencode.py tests/test12.txt
if diff testFile.mtf tests/test12.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test12"
fi
./mtfencode.py tests/test13.txt
if diff testFile.mtf tests/test13.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test13"
fi
./mtfencode.py tests/test14.txt
if diff testFile.mtf tests/test14.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test14"
fi
./mtfencode.py tests/test15.txt
if diff testFile.mtf tests/test15.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test15"
fi
./mtfencode.py tests/test16.txt
if diff testFile.mtf tests/test16.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test16"
fi
./mtfencode.py tests/test17.txt
if diff testFile.mtf tests/test17.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test17"
fi
./mtfencode.py tests/test18.txt
if diff testFile.mtf tests/test18.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test18"
fi
./mtfencode.py tests/test19.txt
if diff testFile.mtf tests/test19.mtf > /dev/null ;then
    let "testsPassed++"
  else
    echo "Failed test19"
fi
echo "Done Testing"
echo "Passed:"
echo "$testsPassed"


