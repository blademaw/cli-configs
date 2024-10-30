# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# aliases
alias vim nvim
alias cat bat

# useful commands
function last_history_item # aliasing !!
  echo $history[1]
end
abbr -a !! --position anywhere --function last_history_item

# lessening delay
set -g fish_escape_delay_ms 30

# age
alias age "~/Dropbox/Work/Projects/wolframscripts/age.zsh"

# pretty printing JSON
alias ppjson 'python -m json.tool'

# java runtime
export JAVA_HOME='Library/Java/JavaVirtualMachines/openjdk-15.0.2/Contents/Home'
