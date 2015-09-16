# Sample makefile
#
all: sbbsexec.dll

OBJS = datewrap.obj dirwrap.obj filewrap.obj genwrap.obj ini_file.obj ringbuf.obj sbbsexec.obj semwrap.obj sockwrap.obj str_list.obj threadwrap.obj xpdatetime.obj

# SDK_INC_PATH and CRT_INC_PATH is set by the DDK setenv.bat
CC = cl
LINK = link
CFLAGS = /nologo /Gz /MT /W3 /GX /O2 /I "\ntddk\inc" /I "..\xpdev" /D "NDEBUG" /D "i386" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SBBSEXEC_EXPORTS" /D "RINGBUF_SEM" /D "RINGBUF_MUTEX" /YX /FD /c /I %CRT_INC_PATH% /I %SDK_INC_PATH%
LFLAGS = /dll /LIBPATH:C:\WINDDK\7600.16385.1\lib\crt\i386 /LIBPATH:C:\WINDDK\7600.16385.1\lib\win7\i386 /machine:I386 /nologo

.c.obj::
	$(CC) $(CFLAGS) $(cvars) $<

sbbsexec.dll: $(OBJS)
	$(LINK) $(LFLAGS)  $(OBJS)
