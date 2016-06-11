# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/fs0/.zshrc'

autoload -Uz compinit
compinit
autoload -Uz promptinit
promptinit
prompt bigfade


# correct keybindings

autoload zkbd
function zkbd_file() {
    [[ -f ~/.zkbd/${TERM}-${VENDOR}-${OSTYPE} ]] && printf '%s' ~/".zkbd/${TERM}-${VENDOR}-${OSTYPE}" && return 0
    [[ -f ~/.zkbd/${TERM}-${DISPLAY}          ]] && printf '%s' ~/".zkbd/${TERM}-${DISPLAY}"          && return 0
    return 1
}

[[ ! -d ~/.zkbd ]] && mkdir ~/.zkbd
keyfile=$(zkbd_file)
ret=$?
if [[ ${ret} -ne 0 ]]; then
    zkbd
    keyfile=$(zkbd_file)
    ret=$?
fi
if [[ ${ret} -eq 0 ]] ; then
    source "${keyfile}"
else
    printf 'Failed to setup keys using zkbd.\n'
fi
unfunction zkbd_file; unset keyfile ret

# setup key accordingly
[[ -n "${key[Home]}"        ]]  && bindkey  "${key[Home]}"        beginning-of-line
[[ -n "${key[End]}"         ]]  && bindkey  "${key[End]}"         end-of-line
[[ -n "${key[Insert]}"      ]]  && bindkey  "${key[Insert]}"      overwrite-mode
[[ -n "${key[Delete]}"      ]]  && bindkey  "${key[Delete]}"      delete-char
[[ -n "${key[Up]}"          ]]  && bindkey  "${key[Up]}"          up-line-or-history
[[ -n "${key[Down]}"        ]]  && bindkey  "${key[Down]}"        down-line-or-history
[[ -n "${key[Left]}"        ]]  && bindkey  "${key[Left]}"        backward-char
[[ -n "${key[Right]}"       ]]  && bindkey  "${key[Right]}"       forward-char
[[ -n "${key[Backspace]}"   ]]  && bindkey  "${key[Backspace]}"   backward-delete-char


# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
# End of lines configured by zsh-newuser-install

alias ls='ls --color=auto'
alias ll='ls -l'
alias vi='vim -p'
alias rm='mv -vi -t /other/trash/'
alias cp='cp -vi'
alias mv='mv -vi'
alias python='python3'
alias mplayersc='mplayer -ao alsa:device=soundcard'
alias xclip='xclip -selection clipboard'

export PATH=.:$PATH:/sbin:/home/fs0/prg/shell-scripts:/home/fs0/prg/prgs
export EDITOR=vim
export BROWSER=chromium
