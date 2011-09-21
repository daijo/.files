function parse_git_branch_and_add_brackets {
  git branch --no-color 2> /dev/null | sed -e '/^[GIT^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}

export PS1="\u@\h:\W\$(parse_git_branch_and_add_brackets)\$ "

source .profile
