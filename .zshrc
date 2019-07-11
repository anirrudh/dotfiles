#
# ~/.zshrc configuration
# Anirrudh Krishnan
# Created Monday, Dec 17th
# V1
# - Uses very lean Zim framework

# Load terminal in 256-bit color
export TERM="xterm-256color"

# Load Zim
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Load zsh autocorrections
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#Define powerlevel location
export POWERLEVEL9K_INSTALLATION_PATH=~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme

# Powerlevel9K Settings
# ================================================
# Font
POWERLEVEL9K_MODE='nerdfont-complete'
# Elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status anaconda battery)
# Customization of Elements
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2 # Shorten the dir reading to two parents
# System info
#neofetch
# ================================================

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

# Plugins
source ~/.zsh/plugins/zsh-apple-touchbar/zsh-apple-touchbar.zsh # Apple Touchbar Shortcut

# GCC
export PATH="/usr/local/bin:$PATH"
# Go
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

# pyenv init
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

# pyenv virtualenv
#eval "$(pyenv virtualenv-init -)"

# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash     hook 2> /dev/null)"
if [ $? -eq 0 ]; then
	\eval "$__conda_setup"
else
	if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
		. "/anaconda3/etc/profile.d/conda.sh"
		CONDA_CHANGEPS1=false conda activate base
	else
		\export PATH="/anaconda3/bin:$PATH"
	fi
fi
unset __conda_setup
# <<< conda init <<<
# Custom Func tabtitle to set tab name
export DISABLE_AUTO_TITLE="true"
function termtext {
	local mode=$1 ; shift
	echo -ne "\033]$mode;$@\007"
}
set_both  () { termtext 0 $@; }
set_tab   () { termtext 1 $@; }
set_window () { termtext 2 $@; }

# Aliasing
alias vim="nvim"
alias gcc="gcc-8" # Set to compile with brew gcc and not Clang
alias python="python3"
alias zshconf="vim ~/.zshrc" # Configuration for zsh
	alias zshsrc="source ~/.zshrc" # Source shell
alias tn="tmux new-session -n"
alias ta="tmux attach-session -t"
# Misc.
setopt AUTO_CD





[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/anirrudhkrishnan/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/anirrudhkrishnan/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/anirrudhkrishnan/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/anirrudhkrishnan/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
