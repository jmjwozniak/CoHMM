#!/bin/sh -e

# Link script that omits eam_memleak.so

set -x

rm -fv libCoMD.so

cc -shared -fPIC -o libCoMD.so cmdLineParser.o CoMD_lib.o decomposition.o deformation.o eam.o haloExchange.o initAtoms.o linkCells.o ljForce.o mycommand.o parallel.o parseInputs.o performanceTimers.o random.o timestep.o yamlOutput.o

# Check/report success:
ls -l libCoMD.so
