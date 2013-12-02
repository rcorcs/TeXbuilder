import sys

def readlog(fileName):
	#print 'reading file:', fileName
	f = open(fileName)
	printLine = False
	for line in f:
		if printLine:
			print line
			printLine = False
		else:
			if line.startswith('./'):
				print line.strip()
				printLine = True
			elif line.startswith('!'):
				print line.strip()

def main():
	if len(sys.argv)>1:
		for i in range(1, len(sys.argv)):
			readlog(sys.argv[i])

main()

