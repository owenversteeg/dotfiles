setxkbmap us -variant colemak

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Check for packages on mistype
# function command_not_found_handler() { /usr/bin/python /usr/lib/command-not-found -- $1 }

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Remember to add this to the bottom (does nothing here at the top)
# Override "gp" as git push, because pari-gp is nicer
alias gp="gp"

export EDITOR="nano"

alias du="du -h"
alias packer="echo yaourt"
alias mu=/bin/ncmpcpp

#Redshift doesn't get correct position otherwise
alias redshift="redshift -l 43:72 -b 0.6"

#My aliases
alias derotate="exiftool -Orientation=1 -n "$@""
alias mop="wine .wine/drive_c/Program\ Files\ \(x86\)/Mozilla\ Firefox/firefox.exe"
alias fbi="rlwrap sbcl"
alias killx="sudo pkill -15 X"

#fuck, I didn't remember to sudo
alias fuck="sudo $(history -p \!\!)"

#.bashrc aliases
#Owen's aliases
#Search DuckDuckGo with links
alias ddg="links duckduckgo.com/?q=%s"
alias entropy="cat /proc/sys/kernel/random/entropy_avail"
alias bc="bc -l"
alias ed="ed -v -p:"
alias nano="nano -S -T 2 -w" #add -Y none for no syntax colorization

function perm(){
	stat -c "%a %A %n" "$@"
}

#Monitor switching
alias monhdmi="xrandr --output LVDS1 --off --output HDMI1 --mode 1920x1080"
alias monhdmibig="xrandr --output LVDS1 --off --output HDMI1 --mode 2560x1440"
alias monlaptop="xrandr --output HDMI1 --off --output LVDS1 --auto"

#Youtube video downloading
function mp3(){
	echo "Enter YouTube URL"
	read link
	#sleep 1
	youtube-dl $link -o "%(title)s.%(ext)s"
	#exit 0
}

# Easy extract
extract () {
  if [ -f "$@" ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf "$@"    ;;
          *.tar.gz)    tar xvzf "$@"    ;;
          *.bz2)       bunzip2 "$@"     ;;
          *.rar)       rar e "$@"       ;;
          *.gz)        gunzip "$@"      ;;
          *.tar)       tar xvf "$@"     ;;
          *.tbz2)      tar xvjf "$@"    ;;
          *.tgz)       tar xvzf "$@"    ;;
          *.zip)       unzip "$@"       ;;
          *.Z)         uncompress "$@"  ;;
          *.7z)        7z x "$@"        ;;
          *)           echo "don't know how to extract "$@"..." ;;
      esac
  else
      echo ""$@" is not a valid file!"
  fi
}

function dict () {
	if [[ $1 == (d|m) ]]; then
		curl dict://dict.org/$1:$2 | $PAGER
	else
		echo 'Unknown command. Use (d)efine or (m)atch.'
	fi
}

calc() {
        if [ -f "$@" ] ; then
    while read data; do
      echo "scale=3;$data" | bc -l
    done;
        else
    echo "scale=3;$@" | bc -l
        fi
}

frankecho() {
        echo "frank"
}

doge() {
        dogeprice=$( wget -qO- "http://doge.yottabyte.nu/json/cryptsy/recent.json" | jq '.[0][0].rate' )
        dogeprice="${dogeprice:8:3}"
        echo "$dogeprice"
}

# Makes directory then moves into it
function mkcdr {
    mkdir -p -v $1
    cd $1
}

#End .bashrc aliases

# Allow bash-style comments
setopt interactivecomments

# Hide username when logged in as myself on a local machine
DEFAULT_USER="owenversteeg"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time 
# stamp shown in the history command output. The optional three formats: 
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd" HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/owen/.cabal/bin:/usr/bin/core_perl:/usr/bin/vendor_perl/:/home/owen/.gem/ruby/2.2.0/bin:/usr/local/heroku/bin:/usr/lib/gcc/x86_64-unknown-linux-gnu/5.1.0:/usr/lib/gcc/x86_64-unknown-linux-gnu/5.1.0"
#export PATH =/usr/local/bin/cw
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Override "gp" as git push, because pari-gp is nicer
alias gp="gp"

# http://cwrapper.sourceforge.net/README
# cw - colorizes everything
export PATH="/usr/local/lib/cw:$PATH"
