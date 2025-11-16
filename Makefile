# Makefile for Guessing Game Project

.PHONY: all clean

all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "**Execution Date and Time:** $$(date)" >> README.md
	@echo "" >> README.md
	@echo "**Number of Lines in guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md
	@echo "" >> README.md
	@echo "## Description" >> README.md
	@echo "A fun Bash script that asks you to guess the number of files in the current directory." >> README.md
	@echo "" >> README.md
	@echo "## How to Play" >> README.md
	@echo "Run the script with: \`bash guessinggame.sh\`" >> README.md

clean:
	rm -f README.md
