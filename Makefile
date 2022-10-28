#----- Modify CC and CFLAGS as appropriate in your environment
CC = gcc
CFLAGS = -O3 -fopenmp

LIB = -lm -lc

UNITFILES = 

#------------ EXECUTABLE FILES ---------------
all: histo histo_lock
histo : histo.o $(UNITFILES)
	$(CC) $(CFLAGS) -o histo histo.o $(UNITFILES) $(LIB)

histo_lock: histo_locks.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f histo histo_lock *.o

histo.o : histo.c
	$(CC) $(CFLAGS) -c histo.c $(INCLUDE) 


