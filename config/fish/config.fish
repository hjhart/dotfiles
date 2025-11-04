if status is-interactive
    # Commands to run in interactive sessions can go here
    nvm use 22
end

# pnpm
set -gx PNPM_HOME "/Users/compuper/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
