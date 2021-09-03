#!/usr/bin/python3
# read standard input

import sys
import re

findH2 = "";
findH3 = "Class Objectives";

nl = re.compile("\n")
c2 = re.compile(r"\n")
begins = re.match("xyz","xyz")
finds = re.search("xyz","some xyz")

pH2 = re.compile('^## ')
pH3 = re.compile('^### ')

inblock = False
for line in sys.stdin:
	if pH2.match(line):
		print( re.sub('Student Guide:','',line.rstrip() ))
	result = pH3.match(line.rstrip())
	if result:
		if re.search(r'Class' , line ):
			inblock = True
		else:
			inblock = False
	if inblock and len(line) > 1:
		print( line.rstrip() )
	

# print("\nfirst line is now") ;
# print(check_list);

