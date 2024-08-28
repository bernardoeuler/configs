# Configuration of my dev setup
This walkthrough teaches how to set up a development environment with my personal settings. In this guide, I will use Ubuntu via WSL2, running on Windows 11.

## Linux setup (Ubuntu)
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
