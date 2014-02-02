# ===========================================================================
# +++hw1.py+++|
# ____________|
#
# Author: Sean Frischmann
# Class: Cse 305
# ===========================================================================

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
			ret.write('<' + '\n' + '>\n')
		else:
			ret.write('<'+contents[pos]+'>\n')
		pos = pos + 1
		length_contents = length_contents - 1
	ret.close()


hw1('foo.txt', 'boo.txt')
