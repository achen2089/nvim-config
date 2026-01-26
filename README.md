# 💤 LazyVim Config

My personal Neovim configuration based on [LazyVim](https://github.com/LazyVim/LazyVim).

## Setup

### 1. Install Neovim (0.9.0 or later)

**macOS:**
```bash
brew install neovim
```

**Linux:**
```bash
# Ubuntu/Debian
sudo apt install neovim

# Fedora
sudo dnf install neovim

# Arch
sudo pacman -S neovim
```

**Windows:**
```powershell
winget install Neovim.Neovim
# or use scoop: scoop install neovim
```

### 2. Clone this repository

**macOS/Linux:**
```bash
git clone git@github.com:achen2089/nvim-config.git ~/.config/nvim
```

**Windows (PowerShell):**
```powershell
git clone git@github.com:achen2089/nvim-config.git $env:LOCALAPPDATA\nvim
```

### 3. Launch Neovim
```bash
nvim
```
LazyVim will automatically install plugins on first launch.

### 4. Initialize Copilot
After plugins are installed, run:
```vim
:Copilot setup
```
Follow the prompts to authenticate with GitHub.

## Additional Resources

- [LazyVim Documentation](https://lazyvim.github.io/installation)
- [LazyVim Keymaps](https://www.lazyvim.org/keymaps)
