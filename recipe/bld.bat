
mkdir build && cd build

cmake -LAH -G"NMake Makefiles"                     ^
  -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%"           ^
  -DCMAKE_Fortran_FLAGS="-Mextend -Mpreprocess"    ^
  -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" .. 
if errorlevel 1 exit 1

nmake VERBOSE=1
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1

ctest --output-on-failure --timeout 100
if errorlevel 1 exit 1

