#----- Modify CC and CFLAGS as appropriate in your environment
CC = gcc
CFLAGS = -O3 -fopenmp
TARGET = histo histo_locks histo_atomic histo_creative

LIB = -lm -lc

UNITFILES = 

#------------ EXECUTABLE FILES ---------------
all: $(TARGET)
histo : histo.o $(UNITFILES)
	$(CC) $(CFLAGS) -o histo histo.o $(UNITFILES) $(LIB)

histo_locks: histo_locks.c
	$(CC) $(CFLAGS) -o $@ $<
histo_atomic: histo_atomic.c
	$(CC) $(CFLAGS) -o $@ $<
histo_creative: histo_creative.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f $(TARGET) *.o

histo.o : histo.c
	$(CC) $(CFLAGS) -c histo.c $(INCLUDE) 


