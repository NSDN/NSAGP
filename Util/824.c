#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

void main(int argc, char* argv[]) {
    if (argc != 3) {
        printf("usage: conv INPUT OUTPUT\n\n");
        return;
    }
    char* input = argv[1];
    char* output = argv[2];
    
    FILE* infile;
    FILE* outfile;
    infile = fopen(input, "rb");
    outfile = fopen(output, "wb");
    if (infile != NULL && outfile != NULL) {
        while (!feof(infile)) {
            uint8_t a, b;
            a = fgetc(infile);
            b = fgetc(infile);
            fputc((a & 0xF0) | (b >> 4), outfile);
        }    
    }
    if (infile != NULL) fclose(infile);
    if (outfile != NULL) fclose(outfile);
}