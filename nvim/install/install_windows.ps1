
$NVIM_CONFIG_DIR=Resolve-Path "$PSScriptRoot/../config/nvim"
$NVIM_CONFIG_INSTALL_DIR=Resolve-Path "$env:LOCALAPPDATA"


Write-Host "Config is in $NVIM_CONFIG_DIR"
Write-Host "Config will be installed in $NVIM_CONFIG_INSTALL_DIR"

Copy-Item -Force -Recurse -Path $NVIM_CONFIG_DIR -Destination $NVIM_CONFIG_INSTALL_DIR
