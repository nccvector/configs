NCCVECTOR_FUNCTIONS=true

# GIT FUNCTIONS
# Git commit and push
function gcops {
    git pull
    git add .
    git commit -m $1
    git push
}

