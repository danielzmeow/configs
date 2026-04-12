# Include Shared Zsh file
source ~/.zshrc.shared

# Customisation
alias updateall='brew update && brew upgrade && omz update && npm update'

# Customisation
export PATH="/opt/homebrew/opt/python@3.14/bin:$PATH"

echo "The most valuable context is the environment surrounding."
# Start TMUX
# Auto start tmux only in real local terminal apps (Ghostty/iTerm/etc),
# but never in VS Code terminal, SSH, or non-interactive shells.
# if [[ -o interactive \
#    && -z "$TMUX" \
#    && -z "$SSH_TTY" \
#    && "$TERM_PROGRAM" != "vscode" \
#    && -z "$VSCODE_GIT_IPC_HANDLE" ]]; then
#   tmux attach-session -t default || tmux new-session -s default
# fi

# Added by Nowledge Mem
export PATH="$HOME/.local/bin:$PATH"

# Added by Antigravity
export PATH="/Users/daniel/.antigravity/antigravity/bin:$PATH"
