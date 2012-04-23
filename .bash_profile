function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -n -e 's/* \(.*\)/\ \[\1\]/p'
}

export PS1="\u@\h:\W\$(parse_git_branch_and_add_brackets)\$ "

set -o vi

source ~/.profile
