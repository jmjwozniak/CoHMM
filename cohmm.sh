#!/bin/sh -eu

# Runs cohmm (shared library version)

CoHMM_HOME=$( cd $( dirname $0 ) ; /bin/pwd )

export LD_LIBRARY_PATH=$CoHMM_HOME/CoMDLib

$CoHMM_HOME/cohmm $*
