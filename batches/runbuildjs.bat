cls
set options=doc srcjs testjs
set currentfolder=%cd%
set srcfolder=%currentfolder%/../src
rem set runablefolder=../../vxlisp/dist
set runablefolder=../../vxlisp/src
rem set runable=vxlisp_win64.exe
set runable=go run .
set pipe=
rem set pipe=> %currentfolder%/run.log
cd %runablefolder%
%runable% %options% :path %srcfolder% %pipe%
cd %currentfolder%
