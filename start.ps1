$nodePath = (Get-Command node).Source
$npmPath = (Get-Command npm).Source
$railsPath = (Get-Command rails).Source
cd C:\rails_quest

Start-Process powershell -ArgumentList "-NoExit", "-Command", "rails server"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "npm run build -- --watch"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "npm run build:css -- --watch"

Write-Host " 1. Rails - http://localhost:3000" -ForegroundColor Yellow
Write-Host " 2. JavaScript " -ForegroundColor Yellow
Write-Host " 3.  CSS (--watch)" -ForegroundColor Yellow
