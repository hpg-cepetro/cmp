all: cmp.c gather.c gather.h interpol.c interpol.h log.c log.h semblance.c semblance.h su.c su.h uthash.h utils.h vector.h
	gcc -std=c99 -Ofast -fpeel-loops -flto -fopenmp -mcmodel=medium -ftree-vectorize -mcpu=power8 -mtune=power8 -funroll-loops *.c -o cmp -lm

clean: cmp 
	rm cmp 
