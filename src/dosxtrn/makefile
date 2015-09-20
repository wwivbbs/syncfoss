# msakefile for dosextrn.exe
#
all: dosxtrn.exe

DDK_LIB_PATH=C:\WINDDK\2600\lib\win_me\
DDK_BIN_PATH=C:\WINDDK\2600\bin\win_me\bin16
DDK_INCL16_PATH=C:\WINDDK\2600\inc\win_me\inc16
DDK_INC_PATH=C:\WINDDK\2600\inc\ddk 
DDK_WXP_INC_PATH=C:\WINDDK\2600\inc\ddk\wxp
MSVC152_INCLUDE_PATH=C:\MSVC\INCLUDE
XPDEV_INCLUDE_PATH=..\xpdev
SBBSEXEC_INCLUDE_PATH=..\sbbsexec
OBJS=dosxtrn.obj 

# SDK_INC_PATH and CRT_INC_PATH is set by the DDK setenv.bat
CC = C:\WINDDK\2600\bin\win_me\bin16\cl.exe
LINK = C:\WINDDK\2600\bin\win_me\bin16\link.exe
CFLAGS=/nologo \
       /AS /Fc /Fm /Gs \
       /I $(MSVC152_INCLUDE_PATH) /I $(DDK_INCL16_PATH) $(DDK_INC_PATH) /I $(DDK_WXP_INC_PATH) /I $(SBBSEXEC_INCLUDE_PATH) \
       /I $(XPDEV_INCLUDE_PATH)

LIBS=libw.lib slibce.lib

.c.obj::
	set LIB=C:\WINDDK\2600\lib\win_me\;..\XPDEV
	$(CC) $(CFLAGS) /c $<

dosxtrn.exe: $(OBJS)
	set LIB=C:\WINDDK\2600\lib\win_me\;..\XPDEV
	$(LINK) $(OBJS),dosxtrn.exe,,$(LIBS),,


clean: 
	del $(OBJS)
	del dosxtrn.exe
	del vc90.idb
