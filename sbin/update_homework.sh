HOME=/home/robforee/Documents/cyber2
CWD=`pwd`
cd $HOME

echo "##Homework"

find . -not -path "./sbin*" -name \*.md | grep -i homework | awk -F/ '{w=NF-2; x=NF-1;z=$0;print $w "  ["$x " " $NF "]("$z")" }' >homework.md

cd $CWD

# find . -name \*.md -exec echo {} \; | grep "/StudentGuide.md" >../tmp/urls_guides
