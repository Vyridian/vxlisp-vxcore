#!/bin/bash
options="webserver"
# runablefolder=../../vxlisp-runtime
runablefolder=../../vxlisp-compiler
currentfolder=$PWD
srcfolder=%currentfolder%/../src
# runable=vxlisp_linux64.exe
# runable=vxlisp_mac64.exe
runable="go run ."
pipe=
# pipe=> %currentfolder%/run.log
cd $runablefolder
$runable $options :path $srcfolder $pipe
cd $currentfolder
