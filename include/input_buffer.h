#ifndef INPUT_BUFFER_H
#define INPUT_BUFFER_H

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

typedef struct {
    char* buffer;
    size_t buffer_length;
    ssize_t input_length;
} InputBuffer;

InputBuffer* new_input_buffer();
void read_input(InputBuffer*);
void close_input_buffer(InputBuffer*);

#endif