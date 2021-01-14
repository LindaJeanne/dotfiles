# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

export PATH=$PATH:~/bin:/sbin:/usr/sbin:/usr/local/sbin:/home/lindajeanne/.gem/ruby/2.5.0/bin

#export PYTHONPATH=$PYTHONPATH:/data/lib/py
export EDITOR="vim"
#export AWESOME_BG_IMG="/data/resources/wallpaper/gabe/monts05.jpg"
#export TERM="xterm-256color"



#alias ls="ls -h --color"
#alias makeconf="sudo vim /etc/portage/make.conf"
#alias greppy=grep_py_files
#alias grephp=grep_php_files

# Prevent Wine from adding menu entries and desktop links.
export WINEDLLOVERRIDES='winemenubuilder.exe=d'

#============================================================
# Colors
#============================================================

color_dk_black="\[\033[0;30m\]"
color_dk_red="\[\033[0;31m\]"
color_dk_green="\[\033[0;32m\]"
color_dk_yellow="\[\033[0;33m\]"
color_dk_blue="\[\033[0;34m\]"
color_dk_magenta="\[\033[0;35m\]"
color_dk_cyan="\[\033[0;36m\]"
color_dk_white="\[\033[0;37m\]"

color_lt_black="\[\033[0;30m\]"
color_lt_red="\[\033[0;31m\]"
color_lt_green="\[\033[0;32m\]"
color_lt_yellow="\[\033[0;33m\]"
color_lt_blue="\[\033[0;34m\]"
color_lt_magenta="\[\033[0;35m\]"
color_lt_cyan="\[\033[0;36m\]"
color_lt_white="\[\033[0;37m\]"

color_dkbld_black="\[\033[0;90m\]"
color_dkbld_red="\[\033[0;91m\]"
color_dkbld_green="\[\033[0;92m\]"
color_dkbld_yellow="\[\033[0;93m\]"
color_dkbld_blue="\[\033[0;94m\]"
color_dkbld_magenta="\[\033[0;95m\]"
color_dkbld_cyan="\[\033[0;96m\]"
color_dkbld_white="\[\033[0;97m\]"

color_end="\[\033[m\]"



# ===========================================================
# Command Prompt 
# ===========================================================

export PS1="$color_dk_yellow\w$color_end$color_dk_green \$$color_end"

#=========================================
# Functions
#=========================================

#grep_py_files() {
#	grep -n $1 *.py */*.py
#}

#grep_php_files() {
#	grep -n $1 *.php */*.php *.module */*.module
#}
export LANG=en_US.utf8

alias ls='ls --color'

alias pkexec='pkexec env DISPLAY=:0 XAUTHORITY=/home/lindajeanne/.Xauthority'

# ========================================
# rclone
# ========================================


alias gref-check="rclone check ~/drives/gdrive-reference gdrive:/my-reference"

alias gref-up="rclone sync --bwlimit 1M ~/drives/gdrive-reference gdrive:/my-reference"

alias gref-down="rclone sync --bwlimit 1M gdrive:/my-reference ~/drives/gdrive-reference"


# ===========================================
# TMSU
# ===========================================

tmsuReplace() {
	tmsu tag $1 $3
	tmsu untag $1 $2
	tmsu tags $1
}
