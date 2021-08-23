HOME=/home/robforee/Documents/cyber2
CWD=`pwd`
cd $HOME

echo "##Activities" >solved.md

find .  -not -path "./sbin*" -name \*.md -exec echo {} \; | \
	grep "/solved" | grep Activities >spool/solved.txt

awk -F/ '{w=NF-5; x=NF-2;z=$0;print $w "  ["$x"]("$z")" }' spool/solved.txt >>solved.md


cd $CWD

# find . -name \*.md -exec echo {} \; | grep "/StudentGuide.md" >../tmp/urls_guides
