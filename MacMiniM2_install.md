Followed installation and compilation instructions as follows:
1. https://github.com/NOAA-GFDL/MOM6-examples/wiki/Getting-started
2. https://github.com/NOAA-GFDL/MOM6-examples/wiki/Compiling-on-MacBook-M1-chip-using-conda-environment
(Be sure to activate the `mommy` conda environment before compiling!)

Run with:
```
cd ocean_only/double_gyre/
mkdir -p RESTART
mpirun -n 8 ../../build/ocean_only/MOM6
```
