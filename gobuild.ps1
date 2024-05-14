Write-Host "`e[1;32m Build Windows x86_64 `e[0m"
$Env:GOOS = "windows"; $Env:GOARCH = "amd64"; go build -o ./dist/lazygit.exe
7z a -tzip -mx5 -mm=deflate ./dist/lazygit_dm_0.41.0_Windows_x86_64.zip ./dist/lazygit.exe

Write-Host "`n`n ------------------------- `n"

Write-Host "`e[1;32m Build Linux  x86_64  _Linux_x86_64 `e[0m"
$Env:GOOS = "linux"; $Env:GOARCH = "amd64"; go build -o ./dist/lazygit
7z a -tzip -mx5 -mm=deflate ./dist/lazygit_dm_0.41.0_Linux_x86_64.zip ./dist/lazygit
rm ./dist/lazygit

Write-Host "`n`n ------------------------- `n"

Write-Host "`e[1;32m Build Linux  aarch64 _Linux_arm64 `e[0m"
Write-Host "`e[1;32m     & Linux  armv7l  _Linux_arm64`e[0m"
$Env:GOOS = "linux"; $Env:GOARCH = "arm64"; go build -o ./dist/lazygit
7z a -tzip -mx5 -mm=deflate ./dist/lazygit_dm_0.41.0_Linux_arm64.zip ./dist/lazygit
rm ./dist/lazygit

Write-Host "`n`n ------------------------- `n"

Write-Host "`e[1;32m Build Linux  armv6l  _Linux_armv6 `e[0m"
$Env:GOOS = "linux"; $Env:GOARCH = "arm"; go build -o ./dist/lazygit
7z a -tzip -mx5 -mm=deflate ./dist/lazygit_dm_0.41.0_Linux_armv6.zip ./dist/lazygit
rm ./dist/lazygit
