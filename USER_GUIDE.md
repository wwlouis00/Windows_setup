# Powershell Setup
> 原文出處：[BekBrace/NeoVim-Settings](https://github.com/BekBrace/NeoVim-Settings/tree/main)
> 原文出處：[Oh My posh/Getting Started](https://ohmyposh.dev/docs/installation/windows)
## Installation
```ps1
winget install JanDeDobbeleer.OhMyPosh -s winget
winget install Neovim.Neovim --id=Neovim.Neovim -e
winget install --id Git.Git -e --source winget
winget install -e --id OpenJS.NodeJS
choco install nvm
```

## Next
- install a [FiraCode Nerd font](https://www.nerdfonts.com/font-downloads)
- configure your terminal/editor to use the installed font
- configure your shell to use Oh My Posh
- (optional) configure a theme or custom prompt configuration

## Update
```ps1
winget upgrade JanDeDobbeleer.OhMyPosh -s winget
```

## Neovim Setup
```shell
cd .\AppData\Local\
cd nvim
nvim init.vim # copy init.vim

iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

nvim init.vim # Command: PlugInstall
```
## Install Yarn for Neovim
```shell
cd .\AppData\Local\nvim-data
cd plugged
cd coc.nvim
npm install --global yarn
yarn --version
yarn install
yarn build
cd ../../../nvim
nvim init.vim
```
## Oh-My-Posh
```ps1
echo $PROFILE
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\powerlevel10k_rainbow.omp.json.omp.json"
```

## pyenv設定
```pwsh
Invoke-WebRequest -UseBasicParsing -Uri "https://raw.githubusercontent.com/pyenv-win/pyenv-win/master/pyenv-win/install-pyenv-win.ps1" -OutFile "./install-pyenv-win.ps1"; &"./install-pyenv-win.ps1"
```
```ps1
$env:PROFILE_LOADED = $true
Import-Module Terminal-icons
oh-my-posh init pwsh --config 'C:\Users\wwlou\AppData\Local\Programs\oh-my-posh\themes\powerlevel10k_rainbow.omp.json' | Invoke-Expression
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
```

