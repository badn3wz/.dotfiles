alias gst="git status"
alias gs="git status"
alias dedyk="tmuxp load dedyk.yaml"
alias yo="yaourt"
alias yi="yaourt -S"
alias ys="yaourt -Ss"
alias yu="yaourt -Syua"
alias clones="cd ~/clones"
alias dot="cd ~/.dotfiles"
alias lsd='ls --color=auto'
alias mig="python manage.py migrate"
alias mkmig="python manage.py makemigrations"
alias nrc="nvim ~/.config/nvim/init.vim"
alias proj="cd ~/projects"
alias runs="python manage.py runserver_plus"
alias zrc="nvim ~/.zshrc"
alias zpr="nvim ~/.zpreztorc"
alias zal="nvim ~/.zaliases.zsh"
alias sp="python manage.py shell_plus"
alias ipy="ipython"
alias ipy2="ipython2"
alias asg="source ~/venvs/asg/bin/activate && cd ~/projects/asg/"
alias prm="source ~/venvs/prime/bin/activate && cd ~/projects/prime/src"
alias dlmp3="youtube-dl --extract-audio --audio-format mp3 --audio-quality 0"
alias pmsc="source ~/venvs/misc/bin/activate && cd ~/projects/"

freeze_to_req () {

    if [[ -a "./req" ]]; then
        pip freeze | grep "$*" >> req;
        echo "success!"
    else
        echo "req file does not exist!"
    fi
}
alias ftr="freeze_to_req"

add_pacman_key() {
    sudo pacman-key -r $1
    sudo pacman-key -f $1
    sudo pacman-key --lsignk-key $1
}
alias packey="add_pacman_key"
