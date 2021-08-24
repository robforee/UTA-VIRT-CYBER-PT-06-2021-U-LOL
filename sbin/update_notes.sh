awk -F\- 'BEGIN{
	print "Title"

} 
{
details= "<details><summary>__Desc</summary>Someinfo</details>"
wrap= "<details><summary>"$2"</summary>"
endwrap= "</details>"

print wrap details endwrap

}' notes.md | tee notes2.md
