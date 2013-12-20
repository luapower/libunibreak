gcc -O3 -s -o ../../bin/unibreak.dll -shared *.c

cd ../.. && linux/bin/luajit libunibreak_demo.lua
