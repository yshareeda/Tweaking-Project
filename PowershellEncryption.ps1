$Code = Get-Content -Path "./PowershellEncryption.txt" -Raw
$CodeSourceString = ConvertTo-SecureString -String $Code -AsPlainText -Force
$Encrypted = ConvertFrom-SecureString -SecureString $CodeSourceString
$Encrypted | Out-File -FilePath "./PowershellEncryption.txt"