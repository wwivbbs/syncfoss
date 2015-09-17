rem @echo off
set LIB=C:\WINDDK\2600\lib\win_me\
C:\WINDDK\2600\bin\win_me\bin16\cl.exe /IC:\MSVC\INCLUDE /IC:\WINDDK\2600\inc\win_me\inc16 /I.. /IC:\WINDDK\2600\inc\ddk  /I..\..\xpdev /IC:\WINDDK\2600\inc\ddk\wxp /AS /Fc /Fm /Gs dosxtrn.c libw.lib slibce.lib
