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

export MANPAGER='nvim +Man!'

alias scg="source ~/bin/startcg.sh"
alias lg=lazygit
alias c=cursor
alias p=pnpm
alias px=pnpx
alias music-rpc=/opt/homebrew/opt/apple-music-discord-rpc/bin/music-rpc.ts
alias clang-format-all='find . -name "*.c" -exec clang-format -i {} +'

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Added by Windsurf
fish_add_path /Users/saumya/.codeium/windsurf/bin

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# pnpm
set -gx PNPM_HOME /Users/saumya/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
