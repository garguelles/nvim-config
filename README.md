## Installation

1. Install Neovim:
   ```bash
   # On macOS using Homebrew
   brew install neovim

   # On Ubuntu/Debian
   sudo apt-get update
   sudo apt-get install neovim

   # On fedora
   sudo dnf update
   sudo dnf install neovim
   ```

2. Clone the configuration:
   ```bash
   git clone git@github.com:garguelles/nvim-config.git ~/.config/nvim && nvim
   ```

3. Set up Vim alias and add ANTHROPIC_API_KEY (add to your ~/.bashrc or ~/.zshrc):
   ```bash
   alias vim='nvim'
   export ANTHROPIC_API_KEY='...'
   ```
   Then reload your shell:
   ```bash
   source ~/.bashrc  # or source ~/.zshrc
   ```

4. Run `:MasonInstallAll` command after lazy.nvim finishes downloading plugins.

![image](https://github.com/user-attachments/assets/d9ee1cc2-7943-4f82-a6e1-3bdcfe7a8504)

