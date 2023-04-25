if status is-interactive
    # Commands to run in interactive sessions can go here
end

set MY_OS (uname -s)
if test "$MY_OS" = "Linux"
    if test -f ~/.bash_profile
        source ~/.bash_profile
    end
    
    if uname -a | grep -q "^Linux.*Microsoft"
      source ~/.config/bash/wsl1/alias.sh
      source ~/.config/bash/wsl1/env.sh
    else
        if test -f /etc/lsb-release
            source ~/.config/bash/ubuntu/alias.sh
            source ~/.config/bash/ubuntu/env.sh
        else
            echo "Unknown Linux OS"
        end
    end
else if test "$MY_OS" = "Darwin"
    if test -f ~/.bash_profile
        source ~/.bash_profile
    end
    source ~/.config/bash/mac/alias.sh
    source ~/.config/bash/mac/env.sh
end

# remove default message
set -g -x fish_greeting ''

# ALIAS
source ~/.config/bash/alias.sh

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '☡'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '+'
set __fish_git_prompt_char_upstream_behind '-'

fish_logo
