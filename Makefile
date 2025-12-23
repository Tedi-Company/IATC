# O binario final que sera gerado
TARGET=IATC-1-OS.bin

GNU=as
CXX=g++

DEBUG=-g
OPT=01
WARN=Wall -Werror

LD=ld

CXXFLAGS = $(DEBUG) $(OPT) $(WARN)
CXXFLAGS += -W -m64 -fno-use-cxa-atexit -nostdlib -
fno-builtin -fno-rtti -fno-exceptions -fno-leading-
underscore

ASFLAGS = --64
LDFLAGS = -MELF_X86_64

objs = loader.o kernel.oobjs)

%.o: %.cpp
   $(CXX) $(CXXFLAGS) -o $@ -c $<

%.o: %.s
    $(GNU) $(ASFLAGS) -o $@ $<

$(TARGET): linker.ld $(objs)
    $(LD) $(LDFLAGS) -T $< -o $@ $(objs)
