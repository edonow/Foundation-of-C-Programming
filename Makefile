CC = gcc
CFLAGS = -Wall -g -march=native# -O2 # -g for debug, -O2 for optimization
#CFLAGS = -Wall -g -O3 -march=native -funroll-loops -fomit-frame-pointer -pthread
LDFLAGS = -lm

TARGET = main.exe
SRCS = main.c sample.c
OBJS = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.c sample.h
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(OBJS) $(TARGET) 
