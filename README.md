# Configuration of my dev setup
This walkthrough teaches how to set up a development environment with my personal settings. In this guide, I will use Ubuntu via WSL2, running on Windows 11.

## Linux setup (Ubuntu)
Settings to apply to your Linux user's home to make it look better and add some features to the shell.

You can simply run the `configure` script:
```
bash -c "$(curl https://raw.githubusercontent.com/bernardoeuler/configs/main/linux/configure)"
```

or follow this steps:

1. Install zsh
    ```zsh
    sudo apt install -y zsh
    ```

2. Clone `.zshenv` to home directory and source
    ```zsh
    curl -O https://raw.githubusercontent.com/bernardoeuler/configs/main/linux/.zshenv
    source ~/.zshenv
    ```

3. Install Oh My Zsh and accept to change default shell to Zsh
    ```zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

4. Install Powerlevel10k
    ```zsh
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    ```

5. Install necessary plugins
    ```zsh
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
    git clone https://github.com/asdf-vm/asdf.git $ASDF_DIR
    ```

6. Clone .zshrc into the user's home (to use my personal settings)
    ```zsh
    curl -O https://raw.githubusercontent.com/bernardoeuler/configs/main/linux/.config/zsh/.zshrc --output-dir $ZDOTDIR
    ```

7. Clone .p10k.zsh into the user's home (to use my personal settings)
    ```zsh
    curl -O https://raw.githubusercontent.com/bernardoeuler/configs/main/linux/.config/zsh/.p10k.zsh --output-dir $ZDOTDIR
    ```

8. Clone `tmux.conf` file and set up plugins
    ```zsh
    mkdir -p $XDG_CONFIG_HOME/tmux
    curl https://raw.githubusercontent.com/bernardoeuler/configs/refs/heads/main/linux/.config/tmux/tmux.conf -o $XDG_CONFIG_HOME/tmux/tmux.conf
    git clone https://github.com/tmux-plugins/tpm $XDG_DATA_HOME/tmux/plugins/tpm
    $XDG_DATA_HOME/tmux/plugins/tpm/bin/install_plugins
    ```

10. Start a new terminal session or run the following command
    ```zsh
    source $ZDOTDIR/.zshrc
    ```

11. Enjoy!


## VS Code settings
Settings to apply to VS Code, either on WIndows or Linux.

1. Install extensions

   1.1. Windows:
    ```cmd
    curl -O --output-dir %USERPROFILE% https://raw.githubusercontent.com/bernardoeuler/configs/main/vscode/install-vscode-extensions.bat && %USERPROFILE%\install-vscode-extensions.bat && del %USERPROFILE%\install-vscode-extensions.bat
    ```
   1.2. Linux:
    ```zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/bernardoeuler/configs/main/vscode/install-vscode-extensions.sh)"
    ```
   1.3. WSL:
    ```zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/bernardoeuler/configs/main/vscode/install-vscode-extensions-wsl.sh)"
    ```

3. Overwrite default settings (Windows)
    ```cmd
    curl -O --output-dir %APPDATA%\Code\User https://raw.githubusercontent.com/bernardoeuler/configs/main/vscode/settings.json
    ```

4. Overwrite default keyboard shortcuts (Windows)
    ```cmd
    curl -O --output-dir %APPDATA%\Code\User https://raw.githubusercontent.com/bernardoeuler/configs/main/vscode/keybindings.json
    ```

### Uninstall extensions
If you want to uninstall all extensions installed before, follow these steps.

1. Windows:
    ```cmd
    curl -O --output-dir %USERPROFILE% https://raw.githubusercontent.com/bernardoeuler/configs/main/vscode/uninstall-vscode-extensions.bat && %USERPROFILE%\uninstall-vscode-extensions.bat && del %USERPROFILE%\uninstall-vscode-extensions.bat
    ```

2. Linux:
    ```zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/bernardoeuler/configs/main/vscode/uninstall-vscode-extensions.sh)"
    ```

3. WSL:
    ```zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/bernardoeuler/configs/main/vscode/uninstall-vscode-extensions-wsl.sh)"
    ```


## Windows Terminal settings
Settings for Windows Terminal, such as color scheme, appearance and so on.

1. Overwrite default settings
    ```cmd
    curl -O --output-dir %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState https://raw.githubusercontent.com/bernardoeuler/configs/main/windows-terminal/settings.json
    ```
