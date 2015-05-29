# Connect to Microsoft Online

Import-Module MSOnline

Connect-MsolService

# Retrieve the list of all users in Spain

$users = Get-MsolUser -All -Country Spain

# Create a new CSV file
$fichero = New-Item c:\Temp\usuarios2.csv -type file -force
Add-Content $fichero """Username"",""Name"""
foreach ( $user in $users ) {
    Add-Content $fichero """$($usuario.UserPrincipalName)"",""$($usuario.DisplayName)"""
}
