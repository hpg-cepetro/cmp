# Common Mid Point

This is a toy program that estimates the best velocity parameter for each
seismic session point, using a brute force algorithm. Notion of best is given
by the semblance correlation function.

# Building & Testing
To build this project, you need to run:
```
make all
```
Note: to build the image and test, you'll have to run the test-cmp.sh script.
To test, intall the Seismic Unix. You can learn how to do it following the tutorials below:

```
http://openpower.ic.unicamp.br/blog/POWER.html
http://openpower.ic.unicamp.br/blog/IC.html
```

The Makefile is focused on Power Servers, and the otimization was made with the IBM SDK
Build Advisor, as shown on the link above:

```
http://openpower.ic.unicamp.br/blog/SDK_opt.html
```

To test the program, you will need a prestack file in the SU file format.  Edit
the script `test-cmp.sh` to point to your seismic file and execute it to test
the program.

After installing Seismic unix, you can see the result image with the following command:

```
suximage < cmp.stack.su
```

# License

This software is licensed under GPL version 2. It also makes use of the [UT
Hash library](https://troydhanson.github.io/uthash/), which is BSD Revised.
