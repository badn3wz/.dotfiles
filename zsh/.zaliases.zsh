alias gst="git status"
alias gs="git status"
alias dedyk="tmuxp load ~/.tmuxp/dedyk.yaml"
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
alias pt="python -m pytest"
alias cpt="coverage run -m pytest"
alias asg="source ~/venvs/asg/bin/activate && cd ~/projects/asg/"
alias prm="source ~/venvs/prime/bin/activate && cd ~/projects/prime/src"
alias dlmp3="youtube-dl --extract-audio --audio-format mp3 --audio-quality 0"
alias pmsc="source ~/venvs/misc/bin/activate && cd ~/projects/"
alias jr="source ~/venvs/jupyter/bin/activate && cd ~/projects/jupyter"
alias img="source ~/projects/imgur/venv/bin/activate && cd ~/projects/imgur"
alias arm="source ~/projects/arma/armaenv/bin/activate && cd ~/projects/arma/code"
alias zi="source ~/venvs/zugi/bin/activate && cd ~/projects/zugi/src"
alias pmm="source ~/projects/prime-money/venv/bin/activate && cd ~/projects/prime-money/src"
alias tkt="source ~/projects/trakt/trakt/bin/activate && ~/projects/trakt"
alias fmi="source ~/projects/forum-migracja/env/bin/activate && ~/projects/forum-migracja/scripts"
alias bgm="source ~/projects/boardgames/zsenv/bin/activate && ~/projects/boardgames/website/src"
alias obey="source ~/projects/obey/obeyenv/bin/activate && ~/projects/obey/superlists"
alias mgw="mwg"
alias mwg="source ~/projects/matura-w-g-owie/mwg/bin/activate && ~/projects/matura-w-g-owie/src"
alias red="source ~/projects/reddit/red/bin/activate && cd ~/projects/reddit/source"
alias eg="source ~/projects/portal-premium/env/bin/activate && cd ~/projects/portal-premium/premium-website/src"

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
alias ftr="freeze_to_file requirements.txt"
alias ftf="freeze_to_file"
alias ftrq="freeze_to_file req"

add_pacman_key() {
    sudo pacman-key -r $1
    sudo pacman-key -f $1
    sudo pacman-key --lsignk-key $1
}
alias packey="add_pacman_key
