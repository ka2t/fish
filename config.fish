set -x LANG ja_JP.UTF-8
export ALTERNATE_EDITOR=""
set -x EDITOR "emacsclient -t"
set -x VISUAL "emacsclient -t"
set -x PATH ~/bin ~/go/bin ~/.local/bin $PATH
export TERM=xterm-24bit

# directoryをを省略表示しない
set -g fish_prompt_pwd_dir_length 0

# alias
alias e="emacsclient -t"
alias ekill="emacsclient -e '(kill-emacs)'"

# Key binding
function fish_user_key_bindings
        bind \eh backward-kill-word
        bind \eg peco_select_ghq_repository
        bind \cr peco_select_history
        bind \cx\ck peco_kill
        bind \ec peco_recentd
end
