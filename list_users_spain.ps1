
Import-Module MSOnline

Connect-MsolService

$users = Get-MsolUser -Country Spain

foreach ( $user in $users ) {
    Write-Host $user.UserPrincipalName
}

