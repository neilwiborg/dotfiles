# starship
$env:STARSHIP_CONFIG = Join-Path $env:USERPROFILE ".config\starship\starship.toml"
Invoke-Expression (&starship init powershell)

# zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })
