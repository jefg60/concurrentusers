$concusers='winrm set winrm/config/winrs @{MaxConcurrentUsers="25"}'
cmd /c $concusers
echo $null >> .\concurrentusers.done
