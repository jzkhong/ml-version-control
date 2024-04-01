# Configure your username and email for Git
git config --global user.name "your-users-name"
git config --global user.email "your-email@company.com"

# Create a new folder called Git-tutorial and navigate to it
mkdir version-control-tutorial
cd version-control-tutorial

# Initialise a Git repository
git init

# Create an empty README.md file and check if Git has detected the new README.md file
echo "" > README.md
git status # the README.md should be listed as untracked file

# Use the git add command to begin tracking the file and recheck git status
git add README.md
git status # the README.md is now listed as changes to be committed

# Commit the change (add a clear and concise message for commit to help recall about the changes later)
git commit -m "Add an empty README.md file"

# View commit history
git log # shows history of changes made, including who, when, and the commit message
