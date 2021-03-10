# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME"/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# command auto-correction.
ENABLE_CORRECTION="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
source $ZSH/custom/plugins/plugins-list.sh

# Custom apps configurations
for config_file ($ZSH_CUSTOM/apps/*.sh(N)); do
  source $config_file
done
unset config_file

# Aliases
for config_file ($ZSH_CUSTOM/aliases/*.sh(N)); do
  source $config_file
done
unset config_file

# Load ZSH config: take effect of all previous ZSH confi
source $ZSH/oh-my-zsh.sh


# You may need to manually set your language environment
export LANG=fr_FR.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='mvim'
fi

#plugin thefuck
eval $(thefuck --alias)

# compilation flags
export ARCHFLAGS="-arch x86_64"
