
# Makefile for Tcl package for CoMD
# Package is loadable from Swift/T

# EDIT: CC, TCL_VERSION, TCL_HOME for your system
# Uses SWIG from PATH

TCL_VERSION = 8.6
TCL_HOME = $(HOME)/sfw/tcl-8.6.0
TCL_INCLUDE = $(TCL_HOME)/include
TCL_LIB = $(TCL_HOME)/lib

CoMD_LIB = ../CoMDLib

all: pkgIndex.tcl

pkgIndex.tcl: make-package.tcl libTclCoMD.so
	LEAF_PKG=comd LEAF_VERSION=0.0 LEAF_SO=libTclCoMD.so \
	tclsh make-package.tcl > $(@)

comd_wrap.c: comd.i $(CoMD_LIB)/CoMD_lib.h
	swig -module comd -I$(CoMD_LIB) -o $(@) $(<)
	sed -i 's/Comd_Init/Tclcomd_Init/' $(@)

comd_wrap.o: comd_wrap.c
	$(CC) -c -fPIC          \
              -I $(TCL_INCLUDE) \
              -I $(CoMD_LIB)    \
	      $(<)

libTclCoMD.so: comd_wrap.o
	$(CC) -shared -fPIC -o $(@) $(<)         \
              -L $(CoMD_LIB) -l CoMD             \
              -L $(TCL_LIB) -l tcl$(TCL_VERSION) \
	      -Wl,-rpath -Wl,$(CoMD_LIB)         \
	      -Wl,-rpath -Wl,$(TCL_LIB)

clean:
	rm -fv pkgIndex.tcl comd_wrap.c
	rm -fv *.o *.so
	rm -fv *.tic
