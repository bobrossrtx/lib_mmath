# Variables
LIB  	 	:= lib
LIBRARY 	:= mmath
INC  	 	:= include
SRC  	 	:= src
TARGET 	 	:= sample.out

SRC_FILES  	:= $(shell find $(SRC) -name "*.c")
OBJ_FILES  	:= $(SRC_FILES:.c=.o)

CC 		 	:= gcc
CFLAGS 		:= -Wall -Wextra -std=gnu99 -I$(INC)
LDFLAGS 	:= -l$(LIBRARY) -L$(LIB)

all: $(TARGET) run

# Compile
$(TARGET): $(OBJ_FILES)
	$(CC) -o $(TARGET) $(OBJ_FILES) $(LDFLAGS)

run:
	LD_LIBRARY_PATH=lib ./$(TARGET)

clean:
	rm -f $(TARGET) $(OBJ_FILES)
