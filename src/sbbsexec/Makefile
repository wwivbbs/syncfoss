# Sample makefile
#
all: sbbsexec.dll

OBJS = sbbsexec.obj 

# SDK_INC_PATH and CRT_INC_PATH is set by the DDK setenv.bat
CC = cl
LINK = link
CFLAGS = /nologo /Gz /MT /W3 /EHsc /O2 \
		 /I "..\xpdev" \
		 /I %CRT_INC_PATH% \
		 /I %SDK_INC_PATH% \
		 /D "NDEBUG" /D "i386" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" \
		 /D "SBBSEXEC_EXPORTS" /D "RINGBUF_SEM" /D "RINGBUF_MUTEX" /FD \
		 /c
LFLAGS = /dll \
         /LIBPATH:..\xpdev \
         /LIBPATH:C:\WINDDK\7600.16385.1\lib\crt\i386 \
         /LIBPATH:C:\WINDDK\7600.16385.1\lib\win7\i386 \
         /machine:I386 /nologo /WX
XPDEV_LIB = ..\xpdev\xpdev.lib
LIBS = xpdev.lib ntvdm.lib ws2_32.lib msvcprt.lib

.c.obj::
	$(CC) $(CFLAGS) $<

sbbsexec.dll: $(OBJS) $(XPDEV_LIB)
	$(LINK) $(LFLAGS) /OUT:sbbsexec.dll $(OBJS) $(LIBS)

$(XPDEV_LIB):
	cd ..\xpdev
	cd
	nmake /fmakefile
	cd
	cd ..\sbbsexec
	cd

clean: 
	del $(OBJS)
	del sbbsexec.dll
	del sbbsexec.exp
	del sbbsexec.lib
	del vc90.idb
