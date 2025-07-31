# aliases
alias vim nvim
alias cat bat
alias neofetch fastfetch


# useful commands
function last_history_item # aliasing !!
  echo $history[1]
end
abbr -a !! --position anywhere --function last_history_item


# lessening delay
set -g fish_escape_delay_ms 30


# age
# alias age "~/Dropbox/Work/Projects/wolframscripts/age.zsh"

# pretty printing JSON
# alias ppjson 'python -m json.tool'

# java runtime
# export JAVA_HOME='Library/Java/JavaVirtualMachines/openjdk-15.0.2/Contents/Home'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/jack/miniconda3/bin/conda
    eval /home/jack/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/jack/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/jack/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/jack/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

# add doom emacs to path
set -x PATH "/home/jack/.config/emacs/bin" $PATH

# add nvim to path
set -x PATH "/opt/nvim-linux-x86_64/bin" $PATH
