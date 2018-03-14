for the main README see [README](README)

# Python wrapper for PSUADE

- https://computation.llnl.gov/projects/psuade-uncertainty-quantification
- https://cython.org

Tested on Ubuntu 16.04 and 17.10, each with the following dependencies installed:

```
> apt install build-essential cmake libpython-dev cython gfortran
```

To build and run:

```
> mkdir build; cd build
> cmake ..
> make
> env PYTHONPATH=lib ../test.py
```
