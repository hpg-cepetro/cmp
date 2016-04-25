# Common Mid Point

This is a toy program that estimates the best velocity parameter for each
seismic session point, using a brute force algorithm. Notion of best is given
by the semblance correlation function.

# Building & Testing

You will need CMake to compile this program. To build, execute the following

    mkdir build
    cd build
    cmake ..
    make

To test the program, you will need a prestack file in the SU file format.  Edit
the script `test-cmp.sh` to point to your seismic file and execute it to test
the program.

# License

This software is licensed under GPL version 2. It also makes use of the [UT
Hash library](https://troydhanson.github.io/uthash/), which is BSD Revised.
