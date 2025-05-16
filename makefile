LDLIBS = -lnetfilter_queue

all: 1m-block

1m-block.o: 1m-block.cpp

1m-block: 1m-block.o
	g++ $^ $(LOADLIBES) $(LDLIBS) -o $@

clean:
	rm -f 1m-block *.o
