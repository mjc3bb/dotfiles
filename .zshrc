# if [ -z "$TMUX" ]
# then
#     tmux attach -t TMUX || tmux new -s TMUX
# fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# set -x

unsetopt BEEP

# If you come from bash you might have to change your $PATH.
#
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/michael.carter/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="gallifrey"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aws docker-compose evalcache)
# plugins=()

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# eval "$(starship init zsh)"
# _evalcache starship init zsh

# . $(brew --prefix asdf)/libexec/asdf.sh



export PATH="/Users/michael.carter/.local/bin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# export ASDF_GROOVY_DISABLE_JAVA_HOME_EXPORT=true


# . ~/.asdf/plugins/java/set-java-home.zsh
#

export HOMEBREW_NO_AUTO_UPDATE=1


export STAR_REGISTRY=nexus-cloud.hcqis.org:28448
export PATH=~/.bin:$PATH

alias pcrn="pre-commit run --all-files"

# alias opw_signin='echo "Retrac_21\!" | op signin | eval'

do_otp_signin() {
	HOME="/Users/michael.carter" echo "Retrac_21\!" | ~/oplogin
}

alias auth-star-dev-failover="docker run -it --rm -v ~/.aws:/root/.aws aws-cli bash -c \"python3 main.py --profile star-dev-failover -a 917886513368 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-DEV-FAILOVER\""
alias auth-star-dev="docker run -it --rm -v ~/.aws:/root/.aws aws-cli bash -c \"python3 main.py --profile star-dev -a 541211618491 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-DEV\""
alias auth-star=dev-backup="docker run -it --rm -v ~/.aws:/root/.aws aws-cli bash -c \"python3 main.py --profile star-dev-backup -a 911520619387 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-DEV-BACKUP\""
alias auth-star-test="docker run -it --rm -v ~/.aws:/root/.aws aws-cli bash -c \"python3 main.py --profile star-test -a 374023520183 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-TEST\""
alias auth-star-test-failover="echo \"Not setup yet\""
alias auth-star-test-backup="echo \"Not setup yet\""
alias auth-star-ado4="echo \"Not setup yet\""
alias auth-star-prod="docker run -it --rm -v ~/.aws:/root/.aws aws-cli bash -c \"python3 main.py --profile star-prod -a 441357678383 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-PROD\""
alias auth-star-prod-failover="echo \"Not setup yet\""
alias auth-star-prod-backup="\"Not setup yet\""


otp() {
	case $1 in 
	"dev-failover")
		INFO="--profile star-dev-failover -a 917886513368 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-DEV-FAILOVER"
		;;
	"dev")
		INFO="--profile star-dev -a 541211618491 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-DEV"
		;;
	"dev-backup")
		INFO="--profile star-dev-backup -a 911520619387 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-DEV-BACKUP"
		;;
	"test")
		INFO="--profile star-test -a 374023520183 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-TEST"
		;;
	"test-failover")
		INFO="--profile star-test-failover -a 639626386340 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-TEST-FAILOVER"
		;;
	"test-backup")
		INFO="--profile star-test-backup -a 035448613093 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-TEST-BACKUP"
		;;
	"prod")
		INFO="--profile star-prod -a 441357678383 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-PROD"
		;;
	"prod-failover")
		INFO="--profile star-prod-failover -a 496738969659 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-PROD-FAILOVER"
		;;
	"prod-backup")
		INFO="--profile star-prod-backup -a 230192142132 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-PROD-BACKUP"
		;;
	"devops")
		INFO="--profile star-devops -a 413612799321 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO22-ADOADMIN-PROD-DEVOPS"
		;;
	"ado4")
		INFO="--profile star-ado4 -a 346776704253 -u vzm9691@QNET.QUALNET.ORG -r ADFS-HIDS-ADO4-ADOADMIN"
		;;
	*)
		echo "Unrecognized env"
		return 1
	esac

	OP_SESSION=$(echo "Retrac_21!" | op signin --raw)
	PASSWORD=$(op get item --session ${OP_SESSION} qlyjqutzkra65klvtipbmfvzr4 | jq ".details.fields[] | select(.name==\"j_password\") | .value" -r)
	OTP=$(python -m vipaccess)
	docker run -it --rm -v ~/.aws:/root/.aws aws-cli bash -c "python3 main.py ${INFO} -p '${PASSWORD}' -o ${OTP}"
}

all_otp() {
	otp dev-failover
	sleep 30
	otp dev
	sleep 30
	otp dev-backup
}

export CLASSPATH=".:/usr/local/lib/antlr-4.10.1-complete.jar:$CLASSPATH"
alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.10.1-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "/usr/local/lib/antlr-4.10.1-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'

export HOMEBREW_NO_INSTALL_CLEANUP=1
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1


# Load Angular CLI autocompletion.
# source <(ng completion script)


# export PATH=$PATH:~/.asdf/installs/python/3.9.6/bin

export PATH=$PATH:~/.emacs.d/bin

export PYENV_VIRTUALENV_DISABLE_PROMPT=0
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init --path)"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
_evalcache pyenv init --path
_evalcache pyenv init -
# _evalcache pyenv virtualenv-init -



bindkey "^[[1;3D" backward-word
bindkey "^[[1;3C" forward-word

# Config eza/exa colors to shades of grey instead of a distractful bright colors
EXA_COLORS=""

# EXA_COLORS+="da=38;5;243:" # darker
# EXA_COLORS+="uu=38;5;239:gu=38;5;239:" # darker username & group
# EXA_COLORS+="sn=38;5;29:sb=38;5;100:" # darker and better contrast for file size

EXA_COLORS+="da=255;255;255:" # darker
EXA_COLORS+="uu=255;255;255:gu=255;255;255:" # darker username & group
EXA_COLORS+="sn=255;255;255:sb=255;255;255:" # darker and better contrast for file size
# Darker permissions (shades of grey)
EXA_COLORS+="ur=255;255;255:uw=255;255;255:ux=255;255;255:ue=255;255;255:" # user permissions
EXA_COLORS+="gr=255;255;255:gw=255;255;255:gx=255;255;255:" # group permissions
EXA_COLORS+="tr=255;255;255:tw=255;255;255:tx=255;255;255:" # other permissions
EXA_COLORS+="xa=38;5;24:" # xattr marker ('@')
EXA_COLORS+="xx=38;5;240:" # punctuation ('-')
export EXA_COLORS



# alias l='eza -lah'
# alias la='eza -lAh'
# alias ll='eza -lh'
# alias ls='eza -G'
# alias lsa='eza -lah'

l='ls -lah'
la='ls -lAh'
ll='ls -lh'
ls='ls -G'
lsa='ls -lah'


timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

authdev() {
  aws-adfs login --adfs-host sts.qualnet.org --no-sspi --profile star-dev --session-duration 12000
}

authtest() {
  aws-adfs login --adfs-host sts.qualnet.org --no-sspi --profile star-test --session-duration 12000
}

authprod() {
  aws-adfs login --adfs-host sts.qualnet.org --no-sspi --profile star-prod --session-duration 12000
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
