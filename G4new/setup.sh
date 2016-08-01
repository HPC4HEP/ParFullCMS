#!/usr/bin/env bash

cd bin && source geant4.sh && cd ..
export LD_LIBRARY_PATH=$PWD/lib:$LD_LIBRARY_PATH
