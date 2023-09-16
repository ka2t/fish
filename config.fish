set -x LANG ja_JP.UTF-8
export TERM=xterm-24bit

# PATH
fish_add_path /usr/local/bin
fish_add_path $HOME/bin
fish_add_path $HOME/go/bin
fish_add_path $HOME/.ghcup/bin

# vscode
string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)


# directoryを省略表示しない
set -g fish_prompt_pwd_dir_length 0

# rbenv
#status --is-interactive; and source (rbenv init -|psub)

# alias

# Key binding
function fish_user_key_bindings
        bind \eh backward-kill-word
        bind \eg peco_select_ghq_repository
        bind \cr peco_select_history
        bind \cx\ck peco_kill
        bind \ec peco_recentd
end

# pyenv
#set PATH $HOME/.pyenv/shims $HOME/.nodebrew/current/bin $PATH
#eval (pyenv init - | source)

# [fisher]
# oh-my-fish/plugin-pbcopy
# oh-my-fish/plugin-peco
# oh-my-fish/theme-fox
# tsu-nera/fish-peco_recentd
# yoshiori/fish-peco_select_ghq_repository
