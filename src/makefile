# Sample makefile
#

SBBSEXEC_DLL = sbbsexec\sbbsexec.dll
all: $(SBBSEXEC_DLL)

$(SBBSEXEC_DLL):
	cd sbbsexec
	$(MAKE) /fmakefile

clean:
	cd sbbsexec
	$(MAKE) /fmakefile clean
	cd ..\xpdev
	$(MAKE) /fmakefile clean

