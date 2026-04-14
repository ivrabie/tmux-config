# tmux config

This layout is organized to keep repo-safe config in one place and local overrides separate.

## Files

- `tmux.conf`: main loader
- `conf.d/*.conf`: split config modules
- `scripts/*.sh`: clipboard and plugin bootstrap scripts
- `local.conf.example`: template for host-specific overrides
- `.gitignore`: ignores `local.conf`

## Use in a repo

1. Track this directory in your dotfiles repo.
2. Keep `local.conf` untracked per machine.
3. Ensure `~/.tmux.conf` contains:

```tmux
source-file ~/.config/tmux/tmux.conf
```

## Plugin install

Run once on a machine:

```bash
~/.config/tmux/scripts/install_plugins.sh
```
