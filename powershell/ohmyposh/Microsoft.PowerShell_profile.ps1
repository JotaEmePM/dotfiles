Import-Module posh-git
Import-Module PSReadLine

If (-Not (Test-Path Variable:PSise)) {
    Import-Module Get-ChildItemColor
    Set-Alias l Get-ChildItem -option AllScope
    Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
}
Set-PSReadlineKeyHandler -Key Tab -Function Complete

oh-my-posh init pwsh --config 'C:\Users\jotaeme\AppData\Local\Programs\oh-my-posh\themes\amro.omp.json' | Invoke-Expression 
# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
Import-Module Terminal-Icons
Set-PSReadLineOption -PredictionViewStyle ListView

Set-Alias lvim 'C:\Users\jotaeme\.local\bin\lvim.ps1'

