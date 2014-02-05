# ===========================================================================
# +++HW1.py+++|
# ____________|
#
# Author: Sean Frischmann
# Class: Cse 305
# ===========================================================================

# ***************************************************************************
# |hw1|
#
# -The purose of this method is to read the contents of a file and print to 
# a designated file each character of the file with a > before the character
# and a < after. If it's a newline character it prints a > followed by a <
# on the next line.
#
# Variables Passed in:
#                     -Name of input file
#                     -Name of output file
# ***************************************************************************
def hw1(inputFile, outputFile):
	with open(inputFile) as f:
		ret = open(outputFile, 'w+')
		while True:
			contents = f.read(1)
			if not contents:
				break
			if contents == '\n':
				ret.write('>' + '\n' + '<\n')
			else:
				ret.write('>'+contents+'<\n')
	ret.close()

