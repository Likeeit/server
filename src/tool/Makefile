
COMMON_OBJ = ../common/obj_all/minicore.o ../common/obj_all/malloc.o \
	../common/obj_all/showmsg.o ../common/obj_all/strlib.o \
	../common/obj_all/utils.o ../common/obj_all/des.o ../common/obj_all/grfio.o
COMMON_H = ../common/core.h ../common/mmo.h ../common/version.h \
	../common/malloc.h ../common/showmsg.h ../common/strlib.h \
	../common/utils.h ../common/cbasetypes.h ../common/des.h ../common/grfio.h

MAPCACHE_OBJ = obj_all/mapcache.o



#####################################################################
.PHONY : all mapcache clean help

all: mapcache

mapcache: obj_all $(MAPCACHE_OBJ) $(COMMON_OBJ)
	gcc  -L/usr/lib -o ../../mapcache $(MAPCACHE_OBJ) $(COMMON_OBJ) -lrt -lm -lz  -ldl

clean:
	rm -rf obj_all/*.o ../../mapcache

help:
	@echo "possible targets are 'mapcache' 'all' 'clean' 'help'"
	@echo "'mapcache'  - mapcache generator"
	@echo "'all'       - builds all above targets"
	@echo "'clean'     - cleans builds and objects"
	@echo "'help'      - outputs this message"

#####################################################################

obj_all:
	-mkdir obj_all

obj_all/%.o: %.c $(COMMON_H)
	gcc -DPACKAGE_NAME=\"\" -DPACKAGE_TARNAME=\"\" -DPACKAGE_VERSION=\"\" -DPACKAGE_STRING=\"\" -DPACKAGE_BUGREPORT=\"\" -DSTDC_HEADERS=1 -DHAVE_SYS_TYPES_H=1 -DHAVE_SYS_STAT_H=1 -DHAVE_STDLIB_H=1 -DHAVE_STRING_H=1 -DHAVE_MEMORY_H=1 -DHAVE_STRINGS_H=1 -DHAVE_INTTYPES_H=1 -DHAVE_STDINT_H=1 -DHAVE_UNISTD_H=1 -DHAVE_LIBZ=1 -g -O2 -pipe -ffast-math -Wall -Wno-sign-compare -Wno-unused-parameter -Wno-pointer-sign -Wno-switch -fno-strict-aliasing -DHAVE_SETRLIMIT -DHAVE_STRNLEN -Wno-unused -Wno-parentheses -DHAVE_MONOTONIC_CLOCK  -L/usr/lib  -I../common -I/usr/include -c $(OUTPUT_OPTION) $<

# missing common object files
../common/obj_all/%.o:
	@$(MAKE) -C ../common txt

../common/obj_all/mini%.o:
	@$(MAKE) -C ../common txt
