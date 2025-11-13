# Dotfiles

Managed with GNU Stow.

## Install GNU Stow
```bash
sudo pacman -S stow
```

## Stow Files
```bash
stow
```

Example:
```bash
stow nvim
```

This creates symlinks from `~/<package-name>/*` to the repo.

## Unstow Files (Delete packages)
```bash
stow -D
```

## Directory Structure
```
dotfiles/
├── nvim/
│   └── .config/
│       └── nvim/
├── bash/
│   └── .bashrc
└── cursor/
|   └── .config/
|       └── Cursor/
|           └── User/
|               ├── keybindings.json
|               └── settings.json
└── hypr/
    └── .config/
        └── hypr/
            └── hyprland.conf

```

Stow creates symlinks at `~/.config/nvim/`, `~/.bashrc`, etc.

## Naming Convention

The package directory name (e.g., `nvim/`, `bash/`) can be anything. Inside each package, the directory structure must exactly match where files belong relative to `~`.

Examples:
- `~/.config/nvim` -> `nvim/.config/nvim`
- `~/.bashrc` -> `bash/.bashrc`
- `~/.config/Cursor/User/` -> `cursor/.config/Cursor/User/`
- `~/.config/hypr` -> `hypr/.config/hypr`

## Adding New Packages

1. Create directory: `mkdir <package-name>`
2. Recreate home directory structure inside it
3. Move config files into the structure
4. Stow it: `stow <package-name>`