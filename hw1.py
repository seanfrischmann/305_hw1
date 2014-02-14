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
	with open(inputFile) as fileIn:
		fileOut = open(outputFile, 'w+')
		while True:
			contents = fileIn.read(1)
			if not contents:
				fileOut.close()
				fileIn.close()
				break
			else:
				fileOut.write('>'+contents+'<\n')

