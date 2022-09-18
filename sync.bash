# Getting current script directory
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

yes | cp -rf ~/.config/nvim/ $SCRIPT_DIR
yes | cp -rf ~/.config/qtile/ $SCRIPT_DIR
yes | cp -rf ~/.config/terminator/ $SCRIPT_DIR

