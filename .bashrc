# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White
# Bold
BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White
# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green
IYellow="\[\033[0;93m\]"      # Yellow
IBlue="\[\033[0;94m\]"        # Blue
IPurple="\[\033[0;95m\]"      # Purple
ICyan="\[\033[0;96m\]"        # Cyan
IWhite="\[\033[0;97m\]"       # White
# Bold High Intensty
BIBlack="\[\033[1;90m\]"      # Black
BIRed="\[\033[1;91m\]"        # Red
BIGreen="\[\033[1;92m\]"      # Green
BIYellow="\[\033[1;93m\]"     # Yellow
BIBlue="\[\033[1;94m\]"       # Blue
BIPurple="\[\033[1;95m\]"     # Purple
BICyan="\[\033[1;96m\]"       # Cyan
BIWhite="\[\033[1;97m\]"      # White

#export HISTTIMEFORMAT="$Red%m/%d/%y %T$Color_Off "
HIST_COLR="\033[0;90m" #Grey
MY_BASH_NOCOLOR="\033[0m"
HISTTIMEFORMAT=`echo -e ${HIST_COLR}[%F %T] $MY_BASH_NOCOLOR `

export PROMPT_COMMAND='RET=$?;\
  BRANCH="";\
  ERRCODE="";\
  COLOR="Red";\
  if [[ $RET != 0 ]]; then\
    ERRCODE=" $RET";\
  fi;\
  if git branch &>/dev/null; then\
    BRANCH=\($(git branch 2>/dev/null | grep \* |  cut -d " " -f 2)\);\
    STATUS=$(git status 2>/dev/null);\
    if grep -q "Changes to be committed" <<<"$STATUS"; then\
        COLOR=Yellow;\
    elif grep -q "nothing to commit" <<<"$STATUS"; then\
        COLOR=Green;\
    fi;\
  fi;
PS1="$IBlack\t$Purple \u@\h $BBlue\w ${!COLOR}$BRANCH$IPurple$ERRCODE $IWhite\$ ";'

