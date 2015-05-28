# Connect to Microsoft Online

Import-Module MSOnline

Connect-MsolService

# Retrieve the list of all users in Spain

$users = Get-MsolUser -All -Country Spain

# Print in console the principal name of each user

foreach ( $user in $users ) {
    Write-Host $user.UserPrincipalName
}

