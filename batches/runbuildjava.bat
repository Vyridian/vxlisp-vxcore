cls
set options=doc srcjava testjava
set runablefolder=..\..\vxlisp-runtime
set currentfolder=%cd%
set srcfolder=%currentfolder%\..\src
set runable=vxlisp_win64.exe
rem set runable=go .
set pipe=
rem set pipe=> %currentfolder%\run.log
cd %runablefolder%
%runable% %options% :path %srcfolder% %pipe%
cd %currentfolder%
