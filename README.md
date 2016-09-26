Standalone version of the ParFullCMS benchmark.
It contains Geant4.

### Compile 
1. cmake .
2. ccmake .
3. Set the value of Geant4_DIR to G4new/lib64/Geant4-10.1.1
4. Set the value of CMAKE_EXE_LINKER_FLAGS to -LG4new/lib
5. Press C
6. Press G
7. Edit the file CMakeFiles/ParFullCMS.dir/build.make and change the entry /usr/local/lib/libxerces-c.so to G4new/lib/libxerces-c.so
8. make -f Makefile

### Configure data locations
1. cd G4new
2. source setup.sh

### Run
./ParFullCMS bench_file n_threads


Tested with gcc --version <= 5.3.0

Benchmarks can run for days, it is highly recommended to run them in a screen/tmux session.
