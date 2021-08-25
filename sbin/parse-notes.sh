awk '
BEGIN{
s0 = "";
s1 = "    "
s2 = "        ";
s3 = "            ";
s4 = "                "
s5 = "                    "
}
$1 == "." { print s0 $0 }; 
$1 == ".." { print s1 $0 }; 
$1 == "..." {print s2 $0};
$1 == "...." {print s3 $0}
$1 == "....." {print s4 $0} 
# $1 == "......" {print s5 $0} 
' text/week-10.txt |  sed 's/\.\{1,6\}//g'
