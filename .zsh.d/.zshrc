#
# .zshrc
#
# @rev    G-0.1.1
# @update 2013-11-10
# @author Saneyuki Tadokoro <saneyan@mail.gfunction.com>

#
# Import other settings
#
source $ZDOTDIR/.zaliases
source $ZDOTDIR/.zfunctions


#
# General settings
#

# Default editor
export EDITOR="vim"

# Character encoding
export LANG=en_US.UTF-8

# Bind key
bindkey -v 

# Do not beep
setopt no_beep

# Move directory without typing "cd"
setopt auto_cd

# Stack history
setopt auto_pushd

# Correct spelling
setopt correct

# Supplement like --val=value
setopt magic_equal_subst

# Use prompt subset
setopt prompt_subst

# Notify as soon as possible when background jobs get change
setopt notify

# Process "which command" as =command
setopt equals

# Use auto complete
autoload -U compinit; compinit

# Show lists if there are some choices
setopt auto_list

# Change specific choice by typing [Tab]
setopt auto_menu

# Pack lists
setopt list_packed

# Show file types
setopt list_types

# Enable reverse menu complete
bindkey "^[[Z" reverse-menu-complete


# Enable glob function
setopt extended_glob


#
# History setting
#

# History file
HISTFILE=~/.zsh_history

# Saving history size
HISTSAVING=10000

# Saving history size (on memory)
HISTSIZE=10000


#
# Path
#
PATH=$PATH:$HOME/bin
PATH=$PATH:$HOME/.gem/ruby/2.0.0/bin
PATH=$PATH:$HOME/wuala

#
# Colors and prompt
#

# Color setting
autoload -U colors; colors

PROMPT="%{${fg[cyan]}%}(%n#${fg[green]%}%~${fg[cyan]}%) %{${reset_color}%}"
