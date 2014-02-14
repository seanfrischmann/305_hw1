%****************************************************************************
 % +++HW1.pl+++|
 % ___________|
 %
 % Author: Sean Frischmann
 % Class: Cse 305
%****************************************************************************

%*===========================================================================
 % |hw1|
 %
 % -The purose of this method is to read the contents of a file and print to 
 %  a designated file each character of the file with a > before the character
 %  and a < after. If it is a newline character it prints a > followed by a <
 %  on the next line.
 %
 % Variables Passed in:
 %                     -Name of input file
 %                     -Name of output file
%*===========================================================================

processFile(InputFile, OutputFile, end_of_file) :-
	close(InputFile).
	
processFile(InputFile, OutputFile, Char) :-
	put(OutputFile, ">"),
	put(OutputFile, Char),
	put(OutputFile, "<"),
	put(OutputFile, '\n'),
	get_char(InputFile, NextChar),
	processFile(InputFile, OutputFile, NextChar).

hw1(FileIn, FileOut) :-
	open(FileIn, read, InputFile),
	open(FileOut, write, OutputFile),
	get_char(InputFile, Char),
	processFile(InputFile, OutputFile, Char).
