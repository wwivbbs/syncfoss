# SynchroNet BBS FOSSIL driver MakeFile
# SynchroNet BBS xpdev (subset) Makefile
#
# This build with the Windows 7.1A DDK. (version 7600.16385.1)
# and relies on having setvars executed first.
# Example:
# C:\WINDDK\7600.16385.1\bin\setenv.bat C:\WINDDK\7600.16385.1

all: xpdev.lib

OBJS = datewrap.obj dirwrap.obj filewrap.obj genwrap.obj ini_file.obj \
       ringbuf.obj semwrap.obj sockwrap.obj str_list.obj \
       threadwrap.obj xpdatetime.obj

# SDK_INC_PATH and CRT_INC_PATH is set by the DDK setenv.bat
CC = cl
LINK = link
CFLAGS = /nologo /Gz /MT /W3 /EHsc /O2 /D "NDEBUG" /D "i386" /D "WIN32" \
         /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "SBBSEXEC_EXPORTS" \
	 /D "RINGBUF_SEM" /D "RINGBUF_MUTEX" /FD /c \
	 /I %CRT_INC_PATH%

LFLAGS = /machine:I386 \
         /LIBPATH:C:\WINDDK\7600.16385.1\lib\crt\i386 \
         /LIBPATH:C:\WINDDK\7600.16385.1\lib\win7\i386 \
	 /WX

.c.obj::
	$(CC) $(CFLAGS) $<

xpdev.lib: $(OBJS)
	$(LINK) /lib $(LFLAGS) /OUT:xpdev.lib $(OBJS)

clean:
	del $(OBJS)
	del vc90.idb
	del xpdev.lib
