# Variables
LIB 		:= lib
INC 		:= include
SRC 		:= src
TARGET 		:= libmmath.so

SRC_FILES 	:= $(shell find $(SRC) -name "*.c")
HDR_FILES 	:= $(shell find $(INC) -name "*.h")
OBJ_FILES 	:= $(SRC_FILES:.c=.o)

CC 			:= gcc
CFLAGS 		:= -Wall -Wextra -std=gnu99 -fpic -I$(INC)
LDFLAGS 	:= -shared

all: clean $(TARGET)

# Compile
$(TARGET): $(OBJ_FILES)
	$(CC) $(CFLAGS) -o $(LIB)/$(TARGET) $(OBJ_FILES) $(LDFLAGS)

# Sample
sample: $(TARGET)
	cp $(LIB)/$(TARGET) sample/$(LIB)/$(TARGET)
	cp $(HDR_FILES) sample/$(INC)
	$(MAKE) -C sample

# Info
files:
	@echo headerfiles = $(HDR_FILES)
	@echo sourcefiles = $(SRC_FILES)
	@echo objectfiles = $(OBJ_FILES)
	@echo target = $(TARGET)

dirs:
	@echo libdir = $(LIB)
	@echo incdir = $(INC)
	@echo srcdir = $(SRC)

env: files dirs
	@echo CC = $(CC)
	@echo CFLAGS = $(CFLAGS)
	@echo LDFLAGS = $(LDFLAGS)

# Clean
clean:
	rm -f $(LIB)/$(TARGET)
	rm -f $(OBJ_FILES)
