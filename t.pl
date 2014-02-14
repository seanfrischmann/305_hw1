processFile(InputFile, OutputFile, end_of_file) :-
	close(InputFile).
	
processFile(Inputfile, OutputFile, Char) :-
	put(">"),
	put(Char),
	put("<"),
	put('\n'),
	get_char(InputFile, NextChar),
	processFile(InputFile, OutputFile, NextChar).

hw1(FileIn, FileOut) :-
	open(FileIn, read, InputFile),
	open(FileOut, write, OutputFile),
	get_char(InputFile, Char),
	processFile(InputFile, OutputFile, Char).
