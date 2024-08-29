# Configuration of my dev setup
This walkthrough teaches how to set up a development environment with my personal settings. In this guide, I will use Ubuntu via WSL2, running on Windows 11.

## Linux setup (Ubuntu)
Settings to apply to your Linux user's home to make it look better and add some features to the shell.

1. Install zsh
    ```zsh
    sudo apt install -y zsh
    ```

2. Install Oh My Zsh and accept to change default shell to Zsh
    ```zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

3. Install Powerlevel10k
    ```zsh
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    ```

4. Install necessary plugins
    ```zsh
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf
    ```

5. Clone .zshrc into the user's home (to use my personal settings)
    ```zsh
    curl -O https://raw.githubusercontent.com/bernardoeuler/configs/main/linux-dotfiles/.zshrc
    ```

6. Clone .p10k.zsh into the user's home (to use my personal settings)
    ```zsh
    curl -O https://raw.githubusercontent.com/bernardoeuler/configs/main/linux-dotfiles/.p10k.zsh
    ```

7. Start a new terminal session or run the following command
    ```zsh
    source .zshrc
    ```

8. Enjoy!


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


## Windows Terminal settings
Settings for Windows Terminal, such as color scheme, appearance and so on.

1. Overwrite default settings
    ```cmd
    curl -O --output-dir %LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState https://raw.githubusercontent.com/bernardoeuler/configs/main/windows-terminal/settings.json
    ```


## WSL settings
Settings to apply to /etc directory.

1. Clone `wsl.conf` file into /etc directory
    ```zsh
    sudo curl https://raw.githubusercontent.com/bernardoeuler/configs/main/wsl/wsl.conf -o /etc/wsl.conf
    ```

2. Terminate the distribution you are running and start again for the changes to take effect
    ```cmd
    wsl -t Ubuntu
    ```
