#!/bin/sh

export CoHMM_SWIFT_HOME=$( cd $( dirname $0 ) ; /bin/pwd )
export SWIFT_PATH=$CoHMM_SWIFT_HOME

export CoHMM_HOME=$( dirname $CoHMM_SWIFT_HOME )

export TURBINE_LOG=0 TURBINE_DEBUG=0 ADLB_DEBUG=0

swift-t $CoHMM_SWIFT_HOME/test-comd-lib.swift
