#!/bin/bash
options="doc srcjava testjava"
# runablefolder=../../vxlisp-runtime
runablefolder=../../vxlisp-compiler
currentfolder=$PWD
srcfolder=%currentfolder%/../src
# runable=vxlisp_linux64
# runable=vxlisp_mac64
runable="go run ."
pipe=
# pipe=> %currentfolder%/run.log
cd $runablefolder
$runable $options :path $srcfolder $pipe
cd $currentfolder
