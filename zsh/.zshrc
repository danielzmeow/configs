# Include Shared Zsh file
source ~/.zshrc.shared

# Customisation: same alias/PATH working on both macOS and Arch Linux
if [[ "$(uname)" == "Darwin" ]]; then
  alias updateall='brew update && brew upgrade && omz update && npm update'
  export PATH="/opt/homebrew/opt/python@3.14/bin:$PATH"
else
  alias updateall='omarchy update && omz update && npm update'
fi

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

export PATH="$HOME/.local/bin:$PATH"

