export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
 export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bullet-train"
# ZSH_THME="agnoster"
# ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="false"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=3

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git \
         mvn \
         autojump \
         last-working-dir \
         svn \
         zshmarks \
         vundle \
         pip \
         extract \
         catimg \
         zsh-syntax-highlighting \
         copydir \
         debian \
         history \
         web-search \
         zsh-navigation-tools \
         zsh_reload \
         colored-man-pages)

# User configuration

export PATH=$PATH:"/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias h="history"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias a="sudo dpkg-reconfigure keyboard-configuration"
alias e=vim
alias -s java='vim'
alias -s xml='vim'
alias -s html='vim'
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xzvf'

# 配置默认编辑器
export EDITOR=/usr/bin/vim

export HISTCONTROL=erasedups
export HISTIGNORE="pwd:ls:ls –ltr:vim:cd:"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

eval `dircolors ~/.dircolors`

setopt HIST_IGNORE_DUPS
source ~/myconfig/third_party/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

znt_list_colorpair="green/white"


# prompt_svn() {
#     local rev branch
#     if in_svn; then
#         rev=$(svn_get_rev_nr)
#         branch=$(svn_get_branch_name)
#         if [[ $(svn_dirty_choose_pwd 1 0) -eq 1 ]]; then
#             prompt_segment yellow black
#             echo -n "$rev@$branch"
#             echo -n "±"
#         else
#             prompt_segment green black
#             echo -n "$rev@$branch"
#         fi
#     fi
# }
# 
# build_prompt() {
#     RETVAL=$?
#     prompt_status
#     prompt_context
#     prompt_dir
#     prompt_git
#     prompt_svn
#     prompt_end
# }
