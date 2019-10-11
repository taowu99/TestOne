# This script is to change mouse cursor to the center of your monitor, 1, 2 or etc
# How to call this script
# powershell.exe -File c:\apps\bin\centercursor.ps1 2
# 
$ScrNum = $Args[0]

echo $ScrNum
if (-Not $ScrNum) {
	$ScrNum = 1
}

[System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") | out-null
[System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") | out-null
$bounds = [system.windows.forms.screen]::AllScreens[$ScrNum-1].Bounds
$center = $bounds.Location
$center.X += $bounds.Width / 2
$center.Y += $bounds.Height / 2
[System.Windows.Forms.Cursor]::Position = $center
