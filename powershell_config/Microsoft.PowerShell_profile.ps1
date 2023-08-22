# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias grep findstr
$env:PROFILE_LOADED = $true
Import-Module Terminal-icons
oh-my-posh init pwsh --config 'C:\Users\wwlou\AppData\Local\Programs\oh-my-posh\themes\powerlevel10k_rainbow_good.omp.json' | Invoke-Expression
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set number

$env:PYENV="$env:USERPROFILE\.pyenv"
[System.Environment]::SetEnvironmentVariable("PYENV", $env:PYENV, "User")
$env:PATH="$env:PYENV\bin;$env:PATH"
