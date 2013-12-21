gcc -O3 -s -o ../../bin/unibreak.dll -shared *.c

cd ../.. && bin/luajit libunibreak_demo.lua
