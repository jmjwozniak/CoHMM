#!/bin/sh

THIS=$( cd $( dirname $0 ) ; /bin/pwd )

export TCLLIBPATH=$THIS
tclsh $THIS/scan.tcl
