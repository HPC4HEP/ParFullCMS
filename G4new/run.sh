#!/usr/bin/env bash

NUMBER_OF_EVENTS_PER_THREAD=100

#if [ "x$BENCH_ROOT" = "x" ]; then
#    echo "Benchmarking root script was not sourced!"
#    exit 1
#fi

#$BENCH_ROOT/tools/disable_turbo || exit 1

source setup.sh

function run_benchmark() {
	for NUMBER_OF_THREADS in $(/oplashare/data/paszoste/tools/get_threads_setup.py); do
        NUMBER_OF_EVENTS=$(($NUMBER_OF_EVENTS_PER_THREAD * $NUMBER_OF_THREADS))
 		echo "Number of events: "$NUMBER_OF_EVENTS" Number of threads: "$NUMBER_OF_THREADS
		export NEVTS=$NUMBER_OF_EVENTS
		time ParFullCMS${NUMBER_OF_THREADS} bench1.g4 2>&1 > out_${NUMBER_OF_THREADS}.log 
		#echo $NUMBER_OF_THREADS" "$(/oplashare/data/paszoste/tools/power/power.py --channels 1,2 "ParFullCMS${NUMBER_OF_THREADS} bench1.g4 2>/dev/null 1>/dev/null") >> power_${HOSTNAME}.log
	done
}

cd working-dir && run_benchmark && cd ..
