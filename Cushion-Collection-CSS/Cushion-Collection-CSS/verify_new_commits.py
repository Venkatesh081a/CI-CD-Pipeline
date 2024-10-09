import requests
import json

REPO_OWNER = 'Venkatesh081a'
REPO_NAME = 'CI-CD-Pipeline'

def get_latest_commit(user,repo):
    url = f"'https://api.github.com/repos/{user}/{repo}/commits"
    response = requests.get(url)
    data = json.load(response.text)
    
    if response.status_code == 200 :
        return data[0]['sha']
    else :
        return None
    
def check_for_new_commits(user,repo,latest_commit):
    current_commit = get_latest_commit(user,repo)
    
    if current_commit == latest_commit :
        print("No new commits ...")
    else :
        print(f"New commit found : {current_commit}")
        
        
# Get the latest commit at the start
latest_commit = get_latest_commit(REPO_OWNER,REPO_NAME)

# Check for new commits
check_for_new_commits(REPO_OWNER,REPO_NAME,latest_commit)