CC := gcc
OBJS := main.o fizzbuzz.o
CFLAGS := -W -Wall

TEST_CFLAGS := $(CFLAGS)
TEST_LIBDIR := -L/usr/lib
TEST_LIB := -lcunit

all: main test

main: $(OBJS)

test: test.c fizzbuzz.c
	$(CC) $^ $(TEST_CFLAGS) $(TEST_LIBDIR) $(TEST_LIB) -o $@

$(OBJS): fizzbuzz.h 

.PHONY: clean
clean:
	-rm *.o 
	-rm main test

.DEFAULT_GOAL=all
