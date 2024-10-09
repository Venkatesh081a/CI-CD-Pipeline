#!/bin/bash
# Run the Python script to check for changes
python3 C:/Users/vulla/Desktop/CI-CD-Pipeline/Cushion-Collection-CSS/Cushion-Collection-CSS/verify_new_commits.py

# If the Python script exits with 0 (changes detected), run the update script
if [ $? -eq 0 ]; then
 C:/Users/vulla/Desktop/CI-CD-Pipeline/Cushion-Collection-CSS/Cushion-Collection-CSS/deploy.sh
fi
