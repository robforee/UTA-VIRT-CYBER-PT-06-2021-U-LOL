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
pH4 = re.compile('^#### ')

flag2 = "h2"
flag3 = "h3"
flag4 = "h4"

inblock = False
for line in sys.stdin:
	if pH2.match(line):
		if re.match("h2",flag2):
			# ed = re.sub("##","",line)
			print( line.strip() );
	if pH3.match(line):
		if re.match("h3",flag3):
			ed = re.sub("###","",line)
			print( ed.strip() )

	if pH4.match(line):
		if re.match("h4",flag4):
			ed = re.sub("#### ","",line)
			print( "* **" + ed.strip() + "**" )

