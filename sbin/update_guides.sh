HOME=/home/robforee/Documents/cyber2
CWD=`pwd`
cd $HOME

echo "## Student Guides" >studentguides.md

find .  -not -path "./sbin*" -name \*.md -exec echo {} \; | 
	grep -i "/StudentGuide" | grep -v "Python" >spool/guides.txt

awk -F/ '{w=NF-2; x=NF-1;z=$0;print $w ".0" $x "  [StudentGuide]("$z")" }' spool/guides.txt >>studentguides.md


cd $CWD

