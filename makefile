#/usr/bin/env bash

all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# Peer-Graded-Assesment-Test" > README.md
	echo $$(date) >> README.md
	echo "  \Number of Lines in guessinggame.sh file" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
