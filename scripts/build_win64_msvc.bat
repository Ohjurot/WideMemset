@echo off
REM Prepare build dir
rmdir build /S /Q
mkdir build

REM nasm build
nasm -f win64 -d WIN64 ./src/wmemset.asm -o ./build/wmemset.obj -l ./build/wmemset.lst

REM link to lib
lib /MACHINE:x64 /OUT:./build/wmemset.lib ./build/wmemset.obj
