# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# Bash Prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
battery_status() {
  /usr/local/bin/battery-status
}

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]$ "

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
