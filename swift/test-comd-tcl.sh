#!/bin/sh

THIS=$( cd $( dirname $0 ) ; /bin/pwd )

export TCLLIBPATH=$THIS

export CoHMM_HOME=$( dirname $THIS )

tclsh $THIS/test-comd.tcl
