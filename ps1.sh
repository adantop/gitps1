# Git branch in prompt.
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

git_status() {
  status=$(git status -s 2> /dev/null)
  if [ $? -eq 0 ]; then
    if [ ${#status} -eq 0 ]; then
      printf "  ($(git_branch))"
    else
      printf "  ($(git_branch)*)"
    fi
  fi
}

git_status_color() {
  status=$(git status -s 2> /dev/null)
  if [ ${#status} -eq 0 ]; then
    printf "\033[01;32m"
  else
    printf "\033[01;31m"
  fi
}

PS1=""
# PS1+="\[\033[01;32m\]\u\[\033[00m\]@"
# PS1+="\[\033[32m\]\h\[\033[00m\]:"
PS1+="\[\033[34m\]\W\[\033[00m\]"
PS1+="\[\$(git_status_color)\]\$(git_status)\[\033[00m\] $ "
