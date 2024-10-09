#!/bin/bash
# This line tells the computer this is a bash script

# Git Hub repo details
REPO_OWNER = 'Venkatesh081a'
REPO_NAME = 'CI-CD-Pipeline'

# These lines set up some information about where your files are
REPO_URL = "https://github.com/$REPO_OWNER/$REPO_NAME.git"
REPO_DIR = "repo"
WEBSITE_DIR = "/var/www/your_website"


# Pull latest changes
cd $REPO_DIR || exit

#clone the repository
git clone $REPO_URL $REPO_DIR

# Navigate to cloned repository
cd $REPO_DIR

# This part goes to your local copy of the website and gets the latest changes
# Copy files to website directory
rsync -av --delete $REPO_DIR/ $WEBSITE_DIR/

# Restart Nginx
sudo service nginx restart

echo "Website updated successfully"
