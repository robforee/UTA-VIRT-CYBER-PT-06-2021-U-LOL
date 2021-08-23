HOME=/home/robforee/Documents/cyber2
CWD=`pwd`
cd $HOME


# get list of relative urls
# find .  -not -path "./sbin*" -name \*.md -exec echo {} \; | grep -i "/unsolved" | grep -i Activities >spool/unsolved.txt

for f in $(cat spool/unsolved.txt);
do
	echo "---"
	unsvd=$f
	classPath=$(echo $f | sed 's/activities.*//I')
	weekPath=$(echo $f | awk -F/ '{print $1"/"$2"/" }' )

	guide=$(ls $classPath/*.md | grep -i guide)
	homework=$(echo ${weekPath}Homework/readme.md)

	solvd=$(echo $f | sed 's/unsolved/solved/I')
	code=$(echo $f | sed 's/unsolved/code/I')

	week=$(echo $f | awk -F/ '{w=NF-5;d=NF-4;print $w}' )  
	day=$(echo $f | awk -F/ '{w=NF-5;d=NF-4;print $w".0"$d}' )  

	echo $week
	echo $day
	echo $guide
	echo $homework
	echo $unsvd
	echo $solvd
	echo $code
done
exit
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

