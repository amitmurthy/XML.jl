all: check-env default

.PHONY: all clean check-env default

check-env:
ifndef XML2DIR
	$(error Environment variable XML2DIR is not set.)
endif

CXX = g++
INC = -I$(XML2DIR)
FLAGS = -Wall -Wno-strict-aliasing -fno-omit-frame-pointer -fPIC
CXXFLAGS = -g
OBJS = libxml2helper.c.o

# Figure out OS and architecture
OS = $(shell uname)
ifeq ($(OS), MINGW32_NT-6.1)
  OS=WINNT
endif

# file extensions
ifeq ($(OS), WINNT)
  SHLIB_EXT = dll 
else ifeq ($(OS), Darwin)
  SHLIB_EXT = dylib
else
  SHLIB_EXT = so
endif

default: libxml2helper.$(SHLIB_EXT)

%.c.o: %.c
	$(CC) $< -fPIC -c -o $@ $(INC) $(CFLAGS) $(FLAGS)

%.cpp.o: %.cpp
	$(CXX) $< -fPIC -c -o $@ $(INC) $(CXXFLAGS) $(FLAGS)

libxml2helper.$(SHLIB_EXT): $(OBJS)
	$(CXX) $(OBJS) -rdynamic -shared -o $@ $(LDFLAGS) $(LIBS) -lxml2

clean:
	rm -f *.o *.$(SHLIB_EXT)
