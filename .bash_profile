# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Bash Prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]$ "

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
