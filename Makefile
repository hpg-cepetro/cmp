ifeq ($(shell uname -m),ppc64le)
    CFLAGS = -std=c99 -Ofast -fpeel-loops -flto -Wl,-q -fopenmp -mcmodel=medium -ftree-vectorize -mcpu=power8 -mtune=power8 -funroll-loops

else
    CFLAGS = -std=c99 -O3 -fopenmp
endif

all: cmp.c gather.c gather.h interpol.c interpol.h log.c log.h semblance.c semblance.h su.c su.h uthash.h utils.h vector.h
	gcc $(CFLAGS) *.c -o cmp -lm

clean: cmp 
	rm cmp cmp.coher.su cmp.stack.su
