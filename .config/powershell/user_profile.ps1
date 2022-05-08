# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

#Prompt
Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\takuya.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression
Import-Module -Name Terminal-Icons

#PSReadline
Set-PSReadLineOption -PredictionSource History

# Alias
Set-Alias vim nvim
Set-Alias touch New-Item
Set-Alias cop Copy-Item
