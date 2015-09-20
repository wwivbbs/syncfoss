# Sample makefile
#

SBBSEXEC_DLL = sbbsexec\sbbsexec.dll
all: $(SBBSEXEC_DLL)

$(SBBSEXEC_DLL):
	cd sbbsexec
	nmake /fmakefile

clean:
	cd sbbsexec
	nmake /fmakefile clean
	cd ..\xpdev
	nmake /fmakefile clean

