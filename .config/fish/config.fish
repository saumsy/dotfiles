if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
fzf --fish | source
thefuck --alias | source
zoxide init fish | source

set PATH $PATH ~/.cargo/bin
set PATH $PATH /usr/local/bin
set PATH $PATH ~/.npm-global/bin/

alias scg="source ~/bin/startcg.sh"
alias lg=lazygit
