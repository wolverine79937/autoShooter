CC=gcc
CXX=g++
RM=rm -r
MV=mv
MYBIN=../bin
MKDIR=mkdir
CPPFLAGS=
LDFLAGS=
LIBS=-lsfml-graphics -lsfml-window -lsfml-system

OBJS=game.o main.o
TARGET=shooter

all: $(TARGET)

shooter: $(OBJS)
	$(CXX) $(LDFLAGS) -o $(TARGET) $(OBJS) $(LIBS)
	$(MKDIR) $(MYBIN)
	$(MV) $(TARGET) $(MYBIN)

clean:
	$(RM) $(OBJS) $(MYBIN)/$(TARGET)
	$(RM) $(MYBIN)

.PHONY: all clean
