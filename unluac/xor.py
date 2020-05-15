import sys, getopt
from itertools import cycle

def xore(data, key):
    return bytes(a ^ b for a, b in zip(data, cycle(key)))

def main(argv):
	inputfile = ''
	outputfile = ''
	try:
		opts, args = getopt.getopt(argv,"hi:o:",["ifile=","ofile="])
	except getopt.GetoptError:
		print ('test.py -i <inputfile> -o <outputfile>')
		sys.exit(2)
	for opt, arg in opts:
		if opt == '-h':
			print ('test.py -i <inputfile> -o <outputfile>')
			sys.exit()
		elif opt in ("-i", "--ifile"):
			inputfile = arg
		elif opt in ("-o", "--ofile"):
			outputfile = arg
	print ('Input file is "', inputfile)
	print ('Output file is "', outputfile)
	key = b'\x66'
	if inputfile and outputfile:
		with open(inputfile, 'rb') as encry, open(outputfile, 'wb') as decry:
			decry.write(xore(encry.read(), key))

if __name__ == "__main__":
   main(sys.argv[1:])