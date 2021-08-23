HOME=/home/robforee/Documents/cyber2
CWD=`pwd`
cd $HOME


# get list of relative urls
find .  -not -path "./sbin*" -name \*.md -exec echo {} \; | grep -i "/unsolved" | grep -i Activities >spool/unsolved.txt

# translate to markup
echo "## Activities" >unsolved.md
awk -F/ 'BEGIN{WEEK="Python";DAY="";PRIOR=""} {w=NF-5; d=NF-4; x=NF-2;z=$0;\

		SESSION=$w".0"$d;
		if(SESSION != PRIOR){
			NEW = "True"
			PRIOR=SESSION
		}else{
			NEW = "False"
		}
		if( NEW == "True" ) { print "**" SESSION "**" }
		print $w ".0" $d"  ["$x"]("$z")" 
		}' spool/unsolved.txt >unsolved.md


cd $CWD

