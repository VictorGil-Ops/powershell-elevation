# Elevated PSSession (alias 'eleva')
function Enter-AdminPSSession {
  if ($env:OS -eq 'Windows_NT') {
    Start-Process -Verb RunAs (Get-Process -Id $PID).Path
  } else {
    sudo (Get-Process -Id $PID).Path
  }
} 

Set-Alias -Name eleva -Value Enter-AdminPSSession
