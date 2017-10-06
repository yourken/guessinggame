projectName=guessinggame
mainFileName=$(projectName).sh
readMe=README.md

$(readMe): $(mainFileName)
	echo "## Projectname: **$(projectName)**" > $(readMe)
	echo "---" >> $(readMe)
	echo "Makefile started at `date`" >> $(readMe)	
	echo "Numer of lines of code: `wc -l $(mainFileName) |egrep -o "[0-9]+"`" >> $(readMe)

clean:
	rm $(readMe)
