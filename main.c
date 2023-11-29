#include "input_buffer.h"

void print_prompt() {
    printf("c_db > ");
}

int main(int argc, char* argv[]) {
    InputBuffer* input_buffer = new_input_buffer();
    while (true) {
        print_prompt();
        read_input(input_buffer);
    }
}