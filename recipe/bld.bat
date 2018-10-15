
mkdir build && cd build

cmake -LAH -G"Ninja"                               ^
  -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%"           ^
  -DCMAKE_Fortran_FLAGS="-Mextend -Mpreprocess"    ^
  -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" .. 
if errorlevel 1 exit 1

ninja -v
if errorlevel 1 exit 1

ninja install
if errorlevel 1 exit 1

