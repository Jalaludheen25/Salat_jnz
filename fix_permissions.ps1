# Must be run as Administrator

# Kill any running Flutter processes
taskkill /F /IM dart.exe /T 2>$null
taskkill /F /IM flutter.exe /T 2>$null

# Remove problematic directories
Remove-Item -Path ".dart_tool" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path "build" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path ".flutter-plugins" -Force -ErrorAction SilentlyContinue
Remove-Item -Path ".flutter-plugins-dependencies" -Force -ErrorAction SilentlyContinue

# Set proper permissions
$projectPath = $PSScriptRoot
$currentUser = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
icacls $projectPath /grant "${currentUser}:(F)" /T

Write-Host "Permissions fixed. You can now run 'flutter clean' and 'flutter pub get'"
