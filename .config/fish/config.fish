if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
thefuck --alias | source

set PATH $PATH ~/.cargo/bin

alias scg="source ~/bin/startcg.sh"
alias lg=lazygit