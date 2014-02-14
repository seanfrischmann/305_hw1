/****************************************************************************
 * +++HW1.c+++|
 * ___________|
 *
 * Author: Sean Frischmann
 * Class: Cse 305
 ***************************************************************************/

#include <stdio.h>
#include <stdlib.h>

/*===========================================================================
 * |hw1|
 *
 * -The purose of this method is to read the contents of a file and print to 
 *  a designated file each character of the file with a > before the character
 *  and a < after. If it's a newline character it prints a > followed by a <
 *  on the next line.
 *
 * Variables Passed in:
 *                     -Name of input file
 *                     -Name of output file
 *==========================================================================*/

void hw1(char *inputFile, char *outputFile){
	FILE *opened_file;
	FILE *return_file;
	opened_file = fopen(inputFile, "r");
	return_file = fopen(outputFile,"w+");
	int c;
	while((c = fgetc(opened_file)) != EOF){
		fprintf(return_file,">%c<\n",c);
	}
	fclose(opened_file);
}
