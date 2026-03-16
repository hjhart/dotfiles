# Tmux Cheat Sheet - Quick Reference

**Prefix:** `C-s` means Ctrl+s

## Session Management
| Command | Description | Keybinding | Description |
|---------|-------------|------------|-------------|
| `tm` | Interactive session picker | `C-s C-j` | Session switcher (fzf) |
| `tm <name>` | Create/attach to session | `C-s J` | Session manager (recent dirs) |
| `C-s d` | Detach from session | `C-s $` | Rename session |

## Windows & Panes
| Keybinding | Description | Keybinding | Description |
|------------|-------------|------------|-------------|
| `C-s c` | New window | `C-s -` | Split vertical |
| `C-s ,` | Rename window | `C-s \` | Split horizontal |
| `C-s n/p` | Next/Previous window | `C-s h/j/k/l` | Navigate panes |
| `C-s 0-9` | Switch to window # | `C-s z` | Zoom pane |
| `C-s &` | Kill window | `C-s x` | Kill pane |

## Pane Resizing
| Keybinding | Amount | Keybinding | Amount |
|------------|--------|------------|--------|
| `Shift + ←/→/↑/↓` | Fine (2/1) | `Ctrl + ←/→/↑/↓` | Coarse (10/5) |

## Copy Mode (Vim-style)
| Key | Action | Key | Action |
|-----|--------|-----|--------|
| `C-s [` or `C-s ]` | Enter copy mode | `v` | Begin selection |
| `C-v` | Rectangle select | `y` or `Enter` | Copy to clipboard |
| `q` | Exit copy mode | Mouse scroll | Auto copy mode |

## Popup Windows
| Keybinding | Description |
|------------|-------------|
| `C-s g` | Git status |
| `C-s ?` | Show cheat sheet |
| `C-s !` | Scratch terminal |

## TPM Plugins
| Keybinding | Description | Feature | Description |
|------------|-------------|---------|-------------|
| `C-s I` | Install plugins | `C-s C-s` | Save session (resurrect) |
| `C-s U` | Update plugins | `C-s C-r` | Restore session |
| Auto | Sessions save every 15 min (continuum) | Auto | Sessions restore on boot |

## Useful Shortcuts
| Keybinding | Description | Abbr | Expands to |
|------------|-------------|------|------------|
| `C-s h` | htop split | `tls` | `tmux list-sessions` |
| `C-s C-p` | Vim scratch pad | `ta` | `tm` (session manager) |
| `C-s r` | Reload config | `tks` | `tmux kill-session -t` |
| `C-s j` | Join pane (prompts) | | |
| `C-s s` | Swap pane (prompts) | | |

## Mouse Support (Enabled!)
**Click** pane to select • **Drag** border to resize • **Scroll** for history • **Double-click** to select word

## Quick Workflows
```bash
# Start/switch sessions
tm                    # Interactive picker
tm myproject         # Create/attach named session

# Inside tmux
C-s C-j              # Quick session switcher
C-s z                # Zoom pane (great for mobile!)
```

## Mobile Tips
✓ **Mouse/touch enabled** - tap, drag, scroll all work  
✓ **50K scrollback** - plenty of history  
✓ **Auto-save** - sessions survive reboots  
✓ **Multi-device** - adapts to smallest screen

---
**Files:** `~/.dotfiles/tmux.conf` • `~/.dotfiles/bin/tm` • View in tmux: `C-s ?`
