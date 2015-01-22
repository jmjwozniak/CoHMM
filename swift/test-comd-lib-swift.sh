#!/bin/sh

export CoHMM_SWIFT_HOME=$( cd $( dirname $0 ) ; /bin/pwd )
export SWIFT_PATH=$CoHMM_SWIFT_HOME

export CoHMM_HOME=$( dirname $CoHMM_SWIFT_HOME )

swift-t $CoHMM_SWIFT_HOME/test-comd-lib.swift
