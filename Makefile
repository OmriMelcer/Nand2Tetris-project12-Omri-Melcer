# Makefile for Nand2Tetris Project 12
# Creates a zip file containing all .jack files and AUTHORS file

# Variables
PROJECT_NAME = project12
ZIP_FILE = $(PROJECT_NAME).zip
JACK_FILES = $(wildcard *.jack)
AUTHORS_FILE = AUTHORS

# Default target
all: $(ZIP_FILE)

# Create the zip file
$(ZIP_FILE): $(JACK_FILES) $(AUTHORS_FILE)
	@echo "Creating $(ZIP_FILE)..."
	@rm -f $(ZIP_FILE)
	@zip -r $(ZIP_FILE) $(JACK_FILES) $(AUTHORS_FILE)
	@echo "Successfully created $(ZIP_FILE)"

# Clean target to remove the zip file
clean:
	@echo "Removing $(ZIP_FILE)..."
	@rm -f $(ZIP_FILE)
	@echo "Clean complete"

# List all files that would be included in the zip
list:
	@echo "Files that will be included in $(ZIP_FILE):"
	@echo "$(JACK_FILES)"
	@echo "$(AUTHORS_FILE)"

# Show help
help:
	@echo "Available targets:"
	@echo "  all     - Create $(ZIP_FILE) (default)"
	@echo "  clean   - Remove $(ZIP_FILE)"
	@echo "  list    - Show files that will be included"
	@echo "  help    - Show this help message"

# Declare phony targets
.PHONY: all clean list help
