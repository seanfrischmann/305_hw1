# ===========================================================================
# +++hw1.py+++|
# ____________|
#
# Author: Sean Frischmann
# Class: Cse 305
# ===========================================================================

# ***************************************************************************
# |hw1|
#
# -The purose of this method is to read the contents of a file and print to 
# a designated file each character of the file with a < before the character
# and a > after. If it's a newline character it prints a < followed by a >
# on the next line.
#
# Variables Passed in:
#                     -Name of input file
#                     -Name of output file
# ***************************************************************************
def hw1(inputFile, outputFile):
	contents = ''
	with open(inputFile) as f:
		for line in f:
			contents= contents + line
	length_contents = len(contents)
	pos = 0
	ret = open(outputFile, 'w+')
	while length_contents > 0:
		if contents[pos] == '\n':
			ret.write('>' + '\n' + '<\n')
		else:
			ret.write('<'+contents[pos]+'>\n')
		pos = pos + 1
		length_contents = length_contents - 1
	ret.close()
