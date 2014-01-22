gcc -O2 -s -static-libgcc *.c -shared -o ../../bin/linux32/libunibreak.so

#cd ../.. && linux/bin/luajit libunibreak_demo.lua
