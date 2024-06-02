# Compiler and flags
COB = cobc
COBFLAGS = -x -free

# Target executable
TARGET = bin/hello_world

# Source file
SRCS = src/*.cbl

# Default rule (builds the target)
all: $(TARGET)

# Rule to build the target from the source
$(TARGET): $(SRCS)
	$(COB) $(COBFLAGS) -o $@ $^

# Rule to clean up generated files
clean:
	rm -f $(TARGET) *.o *.so *.int *.idy
