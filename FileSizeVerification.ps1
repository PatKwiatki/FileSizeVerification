Add-Type -AssemblyName PresentationCore,PresentationFramework

Function Format-FileSize() {
Param ([long]$size)
[string]::Format("{0:0.00} GB", $size / 1GB)
}

$file = 'C:\FileName.ost'
$size=Format-FileSize((Get-Item $file).length)


$ButtonType = [System.Windows.MessageBoxButton]::OK
$MessageBoxTitle = "Outlook Test"
$MessageBoxBody = "The outlook file .ost is $size. If the file reaches max size of 50 GB errors may occur. Please clear your old emails to prevent any errors"
$MessageIcon = [System.Windows.MessageBoxImage]::Warning



If ($size -gt '40') {
[System.Windows.MessageBox]::Show($MessageBoxBody,$MessageBoxTitle,$ButtonType,$MessageIcon)
}
