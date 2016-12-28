# git
alias gst="git status"
alias gs="git status"

# python 
alias ipy="ipython"
alias ipy2="ipython2"
alias pt="python -m pytest"
alias cpt="coverage run -m pytest"

# fzf
alias ftr="freeze_to_file requirements.txt"
alias ftf="freeze_to_file"
alias ftrq="freeze_to_file req"

# django
alias mig="python manage.py migrate"
alias mkmig="python manage.py makemigrations"
alias runs="python manage.py runserver_plus"
alias sp="python manage.py shell_plus"
alias mng="python manage.py"

# config files
alias nrc="nvim ~/.config/nvim/init.vim"
alias zrc="nvim ~/.zshrc"
alias zpr="nvim ~/.zpreztorc"
alias zal="nvim ~/.zaliases.zsh"

# yaourt & pacman
alias yo="yaourt"
alias yi="yaourt -S"
alias ys="yaourt -Ss"
alias yu="yaourt -Syua"
alias packey="add_pacman_key"

# directories
alias clones="cd ~/clones"
alias dot="cd ~/.dotfiles"
alias proj="cd ~/projects"

# misc
alias dedyk="tmuxp load ~/.tmuxp/dedyk.yaml"
alias lsd='ls --color=auto'
alias dlmp3="youtube-dl --extract-audio --audio-format mp3 --audio-quality 0"

# projects
alias pmsc="source ~/venvs/misc/bin/activate && cd ~/projects/"
alias asg="source ~/venvs/asg/bin/activate && cd ~/projects/asg/"
alias jr="source ~/venvs/jupyter/bin/activate && cd ~/projects/jupyter"
alias img="source ~/projects/imgur/venv/bin/activate && cd ~/projects/imgur"
alias arm="source ~/projects/arma/armaenv/bin/activate && cd ~/projects/arma/code"
alias tkt="source ~/projects/trakt/trakt/bin/activate && ~/projects/trakt"
alias bgm="source ~/projects/boardgames/zsenv/bin/activate && ~/projects/boardgames/website/src"
alias obey="source ~/projects/obey/obeyenv/bin/activate && ~/projects/obey/superlists"
alias red="source ~/projects/reddit/red/bin/activate && cd ~/projects/reddit/source"

# ================================================================================================= #
# functions                                                                                         #
# ================================================================================================= #
freeze_to_file () {
    if [ -z $1 ]
    then
        echo "You need to specify requirements file name"
    elif [[ -a $1 ]] 
    then
        pip freeze | fzf -m >> $1;
        echo "Success!"
    else
        echo "File does not exist!"
    fi
}

add_pacman_key() {
    sudo pacman-key -r $1
    sudo pacman-key -f $1
    sudo pacman-key --lsignk-key $1
}
