# Tmux Cheat Sheet

## Quick Reference

### Session Management
| Command | Description |
|---------|-------------|
| `tm` | Interactive session picker (shows existing sessions + recent dirs) |
| `tm <name>` | Create or attach to session named `<name>` |
| `tm <path>` | Create or attach to session at `<path>` |
| `C-s d` | Detach from current session |
| `C-s $` | Rename current session |
| `C-s C-^` | Switch to last session |

### Session Management (Inside tmux)
| Keybinding | Description |
|------------|-------------|
| `C-s C-j` | Interactive session switcher (fzf) |
| `C-s J` | Session manager with recent dirs (tm script) |

### Window Management
| Keybinding | Description |
|------------|-------------|
| `C-s c` | Create new window (in current path) |
| `C-s ,` | Rename current window |
| `C-s n` | Next window |
| `C-s p` | Previous window |
| `C-s 0-9` | Switch to window by number |
| `C-s w` | List all windows |
| `C-s &` | Kill current window (with confirmation) |
| `C-s X` | Kill window with custom confirmation |

### Pane Management
| Keybinding | Description |
|------------|-------------|
| `C-s -` | Split pane vertically (below) |
| `C-s \` | Split pane horizontally (right) |
| `C-s h/j/k/l` | Navigate panes (vim-style) |
| `C-s C-h/j/k/l` | Navigate panes (also works) |
| `C-s o` | Cycle through panes |
| `C-s z` | Zoom/unzoom current pane |
| `C-s x` | Kill current pane |
| `C-s !` | Break pane into new window |
| `C-s b` | Break pane into background window |

### Pane Resizing
| Keybinding | Description |
|------------|-------------|
| `Shift + ←/→/↑/↓` | Resize pane (fine: 2/1 cells) |
| `Ctrl + ←/→/↑/↓` | Resize pane (coarse: 10/5 cells) |

### Advanced Pane Operations
| Keybinding | Description |
|------------|-------------|
| `C-s j` | Join pane from another window (prompts) |
| `C-s s` | Swap current pane with another (prompts) |
| `C-s {` | Move pane left |
| `C-s }` | Move pane right |

### Copy Mode (Vim-style)
| Keybinding | Description |
|------------|-------------|
| `C-s [` | Enter copy mode |
| `C-s ]` | Enter copy mode (alternate) |
| `v` (in copy mode) | Begin selection |
| `C-v` (in copy mode) | Rectangle selection |
| `y` (in copy mode) | Copy selection to clipboard |
| `Enter` (in copy mode) | Copy selection to clipboard |
| `q` (in copy mode) | Exit copy mode |

### Mouse Support
| Action | Description |
|--------|-------------|
| Click pane | Select pane |
| Drag pane border | Resize pane |
| Scroll wheel | Scroll history (enters copy mode automatically) |
| Double-click word | Select word |
| Triple-click line | Select line |

### Popup Windows (Tmux 3.2+)
| Keybinding | Description |
|------------|-------------|
| `C-s g` | Git status popup |
| `C-s ?` | Show this cheat sheet in popup |
| `C-s !` (popup) | Scratch terminal popup |

### Useful Shortcuts
| Keybinding | Description |
|------------|-------------|
| `C-s h` | Open htop in horizontal split |
| `C-s C-p` | Open scratch pad in vim |
| `C-s C-b` | Break out to new session with tm |
| `C-s r` | Reload tmux config |
| `C-s :` | Command prompt |

### TPM (Plugin Manager)
| Keybinding | Description |
|------------|-------------|
| `C-s I` (Shift+i) | Install plugins |
| `C-s U` (Shift+u) | Update plugins |
| `C-s M-u` (Alt+u) | Uninstall plugins not in list |

## Installed Plugins

### tmux-resurrect
Save and restore tmux sessions across reboots.
- `C-s C-s` - Save current session
- `C-s C-r` - Restore saved session

### tmux-continuum
Automatic session saving every 15 minutes.
- Sessions are automatically saved
- Sessions are automatically restored when tmux starts

### tmux-yank
Enhanced clipboard integration.
- Works with copy mode selections
- Cross-platform clipboard support

### tmux-open
Open files/URLs from copy mode.
- Highlight path/URL in copy mode
- Press `o` to open
- Press `Ctrl-o` to open in $EDITOR

## Common Workflows

### Starting a New Project Session
```bash
# From anywhere
tm myproject

# From project directory
cd ~/projects/myproject
tm
```

### Switching Between Projects
```bash
# Interactive picker
tm

# Or use fzf inside tmux
C-s C-j
```

### Saving Work Before Reboot
Sessions are automatically saved every 15 minutes via tmux-continuum.
Manual save: `C-s C-s`

### Restoring After Reboot
Sessions automatically restore when you start tmux.
Manual restore: `C-s C-r`

### Working with Multiple Sessions
```bash
# Create sessions for different projects
tm work
tm personal
tm experiments

# Switch between them
C-s C-j  (interactive picker)
C-s (    (previous session)
C-s )    (next session)
```

## Tips for Mobile/Remote Access

1. **Mouse Support**: Enabled! Use touch to select panes, resize, and scroll
2. **Scrollback**: 50,000 lines - plenty of history
3. **Session Persistence**: Auto-saves every 15 min, survives reboots
4. **Multiple Devices**: Aggressive-resize adapts window to smallest client
5. **Quick Sessions**: Use `tm` to quickly jump between work contexts

## Configuration Files
- Main config: `~/.dotfiles/tmux.conf`
- Session script: `~/.dotfiles/bin/tm`
- Cheat sheet: `~/.dotfiles/support/tmux-cheatsheet.md`

## Troubleshooting

### Plugins not working?
```bash
# Install plugins
C-s I

# Or manually
~/.tmux/plugins/tpm/bin/install_plugins
```

### Session not restoring?
Check if resurrect saved data exists:
```bash
ls -la ~/.tmux/resurrect/
```

### Colors look wrong?
Make sure your terminal supports true color:
```bash
echo $TERM
# Should be: screen-256color or tmux-256color
```

## Shell Abbreviations

| Abbreviation | Expands to | Description |
|--------------|------------|-------------|
| `tls` | `tmux list-sessions` | List all sessions |
| `ta` | `tmux attach` or `tm` | Attach to session |
| `tks` | `tmux kill-session -t` | Kill specific session |

---

**Note**: `C-s` means Ctrl+s (the tmux prefix key)
**Note**: To view this cheat sheet inside tmux, press `C-s ?`
