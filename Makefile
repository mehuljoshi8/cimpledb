# Makefile for a C project with src and include directories

# Compiler
CC = gcc

# Compiler flags
CFLAGS = -std=c11 -Wall

# Directories
SRC_DIR = src
INCLUDE_DIR = include

# Source files
SRC = $(wildcard $(SRC_DIR)/*.c)

# Header files
HEADERS = $(wildcard $(INCLUDE_DIR)/*.h)

# Object files
OBJ = $(SRC:.c=.o)

# Executable name
EXEC = cimpledb

# Target for the executable
$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) $^ -o $@

# Compile source files to object files
$(SRC_DIR)/%.o: $(SRC_DIR)/%.c $(HEADERS)
	$(CC) $(CFLAGS) -I$(INCLUDE_DIR) -c $< -o $@

# Phony target to clean up generated files
.PHONY: clean
clean:
	rm -f $(EXEC) $(SRC_DIR)/*.o

