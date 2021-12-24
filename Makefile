CC = g++
CFLAGS = -c -Wall
OUT = output
OBJS = main.o calculator.o mylib.a


all: $(OBJS)
	$(CC) main.o calculator.o -o $(OUT)

# $(OUT): main.o calculator.o
#     $(CC) $(CFLAGS) $(CLIBS) -o $(OUT) $(OBJS)

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

calculator.o: calculator.cpp
	$(CC) $(CFLAGS) calculator.cpp

mylib.a: calculator.cpp
	ar -rcs mylib.a calculator.o

clean:
	rm -rf *.o $(OUT)