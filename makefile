projectName=guessinggame
mainFileName=$(projectName).sh
readMe=README.md

$(readMe): $(mainFileName)
	echo "## Projectname: **$(projectName)**" > $(readMe)
	echo "# Makefile started at `date`" >> $(readMe)	
	echo "# Number of lines of code: `wc -l $(mainFileName) |egrep -o "[0-9]+"`" >> $(readMe)

clean:
	rm $(readMe)
