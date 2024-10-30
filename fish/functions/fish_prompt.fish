function __conda_add_prompt
end

function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _git_is_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

# LEFT
# (git branch x/y) λ

# RIGHT
# [time] (base)
# gray
# function fish_prompt2
#   set -l last_status $status
#
#   set -l cyan (set_color cyan)
#   set -l yellow (set_color yellow)
#   set -l red (set_color red)
#   set -l blue (set_color blue)
#   set -l green (set_color green)
#   set -l normal (set_color normal)
#
#   set -l cwd $blue(pwd | sed "s:^$HOME:~:")
#
#   echo -e ''
#
#   if set -q VIRTUAL_ENV
#       echo -n -s (set_color -b cyan black) '[' (basename "$VIRTUAL_ENV") ']' $normal ' '
#   end
#
#   echo -n -s $cwd $normal
#
#   if [ (_git_branch_name) ]
#     set -l git_branch (_git_branch_name)
#
#     if [ (_git_is_dirty) ]
#       set git_info $green $git_branch $red " ✗" $normal
#     else
#       set git_info $green $git_branch ' ✔'
#     end
#     echo -n -s '  ' $git_info $normal
#   end
#
#   set -l prompt_color $red
#   if test $last_status = 0
#     set prompt_color $normal
#   end
#
#   echo -e ''
#   echo -n -s "$normal▶ "
# end


function fish_prompt
  set -l last_status $status

  set -l git_branch_color (set_color $fish_color_comment)
  set -l git_red (set_color $fish_color_error)
  set -l git_green (set_color $fish_color_command)
  set -l normal (set_color $fish_color_normal)
  set -l icon_color (set_color -o $fish_color_end)
  set -l obscure_color (set_color brblack)

  # NOTE: this was not worth it. `fish_git_prompt` is slow.
  # set -g __fish_git_prompt_color blue
  #
  # if set -l git_branch (string trim (fish_git_prompt))
  #   echo -n -s $git_branch ' '
  # end

  if [ (_git_branch_name) ]
    echo -s -n $obscure_color '('
    set -l git_branch (_git_branch_name)

    if [ (_git_is_dirty) ]
      set git_info $git_branch_color $git_branch $git_red " ✗" $normal
    else
      set git_info $git_green $git_branch ' ✔'
    end
    echo -n -s $git_info $normal $obscure_color ') '
  end

  set -l mod_path (pwd | sed "s:^$HOME:~:")
  set -l cwd (path basename $mod_path)

  if set -q VIRTUAL_ENV
      echo -n -s (set_color -b cyan black) '[' (basename "$VIRTUAL_ENV") ']' $normal ' '
  end

  echo -n -s $obscure_color $cwd

  set -l prompt_color $git_red
  if test $last_status = 0
    set prompt_color $normal
  end

  echo -n -s "$icon_color λ $prompt_color"
end

function fish_right_prompt
  if set -q CONDA_PROMPT_MODIFIER
    set_color -o $fish_color_quote
    echo -n $CONDA_PROMPT_MODIFIER
    set_color normal
  end
  echo -n -s (set_color brblack) '[' (date '+%H:%M:%S') ']'
end
