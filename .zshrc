# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

source ~/.kubectl_aliases

alias istioctl="/Users/mokeefe/istio-1.1.0-rc.5/bin/istioctl"

export PATH=/Applications/Julia-1.0.app/Contents/Resources/julia/bin/:$PATH
export PATH=/Users/mokeefe/google-cloud-sdk/bin/:$PATH
export PATH=/Users/mokeefe/go/bin/:$PATH
export PATH=$PATH:/Applications/MySQLWorkbench.app/Contents/MacOS
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH=$PATH:/Users/mokeefe/istio-1.0.6/bin/
alias kubectl='/usr/local/bin/kubectl'
alias inj='kubectl label namespace default istio-injection=enabled'
alias uninj='kubectl label namespace default istio-injection=disabled --overwrite'
alias kap='kubectl apply -f'
alias kde='kubectl delete -f'
alias stei='stern -n istio-system'
alias step='stern -c istio-proxy'
alias lynx='/Applications/Lynxlet.app/Contents/Resources/lynx/bin/lynx'
alias po='kubectl get pods'
alias ipo='kubectl get pods -n istio-system'
alias sv='kubectl get svc'
alias isv='kubectl get svc -n istio-system'
alias ww='watch -n 1 kubectl get pods'
alias iww='watch -n 1 kubectl get pods -n istio-system'
alias kx='kubectx'
alias vs="kubectl get virtualservice"
alias dr="kubectl get destinationrule"
alias gw="kubectl get gateway"
alias se="kubectl get serviceentry"

alias icend="istioctl proxy-config endpoint"
alias icboot="istioctl proxy-config bootstrap"
alias icroute="istioctl proxy-config route" 
alias iclist="istioctl proxy-config listener" 
alias icclu="istioctl proxy-config cluster"

# Path to your oh-my-zsh installation.
export ZSH="/Users/mokeefe/.oh-my-zsh"

export ghme=/Users/mokeefe/go/src/github.com/askmeegs
alias mis='cd /Users/mokeefe/go/src/github.com/askmeegs/istio-samples'
alias hip='cd /Users/mokeefe/go/src/github.com/GoogleCloudPlatform/microservices-demo'
export ct="mokeefe.c.googlers.com"
export GOPATH=/Users/mokeefe/go

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source <(kubectl completion zsh)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mokeefe/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mokeefe/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mokeefe/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mokeefe/google-cloud-sdk/completion.zsh.inc'; fi
