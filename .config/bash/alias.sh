
# References:
#  * https://github.com/vikaskyadav/awesome-bash-alias


alias l='ls -AGFh'
alias ls="ls -GF"
alias la="ls -aGF"
alias ll="ls -aGFl"

alias bc="bc -l"

alias c="clear"
alias cl="clear"
alias ckear="clear"
alias clr="clear"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."


alias dl="sudo docker ps -l -q"
alias dps="sudo docker ps"
alias di="sudo docker images"
alias dip="sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias dkd="sudo docker run -d -P"
alias dki="sudo docker run -i -t -P"
alias dex="sudo docker exec -i -t"

