NCCVECTOR_FUNCTIONS=true

# GIT FUNCTIONS
# Git commit and push
function gcops {
    git pull
    git add .
    git commit -m $1
    git push
}

# Git commit, push and set upstream
function gcosu {
    git pull
    git add .
    git commit -m "$1"
    BRANCH_NAME = git symbolic-ref --short -q HEAD
    echo "Upstreaming $BRANCH_NAME"
    # git push -u origin/$BRANCH_NAME
}

