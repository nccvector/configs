source ~/.config/bash_colors.sh
source ~/.config/git_prompt.sh

# Get Virtual Env
VIRTUAL_ENV_DISABLE_PROMPT="yes"
GIT_PS1_SHOWDIRTYSTATE="yes"
GIT_PS1_SHOWUNTRACKEDFILES="yes"
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"
GIT_PS1_HIDE_IF_PWD_IGNORED="yes"

# Brackets
BB="$Reset["
BE="$Reset]"


USERNAME_HOST="$Greenλ$Reset:"
WD="$IBlue\\w$Reset"
PR="$BGreen\$$Reset"

BEFORE="$USERNAME_HOST $WD"
AFTER="$PR "
FORMAT="[%s] "

# Could be overwritten later in the ~/.bashrc
PROMPT_COMMAND='__git_ps1 "$BEFORE ${VIRTUAL_ENV:+$BB$Black`basename $VIRTUAL_ENV`$BE}" "$AFTER" "$FORMAT"'
