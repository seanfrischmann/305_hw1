/***************************************************************
 * HW1.c|
 * _____|
 *
 * Author: Sean Frischmann
 * Class: Cse 305
 **************************************************************/

#include <stdio.h>
#include <stdlib.h>

void hw1(char *inputFile){
	FILE *file_to_open;
	file_to_open = fopen(inputFile, "r");
	char line = NULL;
	const char *contents;
	size_t len = 0;
	ssize_t read;
	int pos = 0;
	while((read = getline(&line, &len, file_to_open)) != -1){
		contents[pos] = line;
		pos++;
	}
	size_t contents_length = sizeof(contents);
	for(size_t i=0; i< contents_length; i++){
		printf(contents[i]);
	}
	fclose(file_to_open);
}
int main(){
	hw1("foo.txt");
	return 0;
}
