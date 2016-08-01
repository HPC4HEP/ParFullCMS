#!/usr/bin/env bash

curdir=$PWD
location=$(dirname $0)
cd $location/working-dir && (rm out_*; rm results*) && cd $curdir
