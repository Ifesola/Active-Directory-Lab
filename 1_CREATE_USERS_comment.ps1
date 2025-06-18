# ----- Edit these Variables for your own Use Case ----- #

# Set the password that will be assigned to all users being created
$PASSWORD_FOR_USERS = "Password1"

# Read the list of full names (first and last) from the file "names.txt", one per line
$USER_FIRST_LAST_LIST = Get-Content .\names.txt

# ------------------------------------------------------ #

# Convert the plain text password into a secure string format required by New-ADUser
$password = ConvertTo-SecureString $PASSWORD_FOR_USERS -AsPlainText -Force

# Create a new Organizational Unit (OU) called "_USERS" and allow it to be deleted
New-ADOrganizationalUnit -Name _USERS -ProtectedFromAccidentalDeletion $false

# Loop through each name in the list (assumes format: Firstname Lastname)
foreach ($n in $USER_FIRST_LAST_LIST) {

    # Extract the first name by splitting the full name and converting it to lowercase
    $first = $n.Split(" ")[0].ToLower()

    # Extract the last name by splitting the full name and converting it to lowercase
    $last = $n.Split(" ")[1].ToLower()

    # Create a username using the first letter of the first name + full last name (e.g., jdoe)
    $username = "$($first.Substring(0,1))$($last)".ToLower()

    # Print the username being created in the console with colored output
    Write-Host "Creating user: $($username)" -BackgroundColor Black -ForegroundColor Cyan

    # Create a new Active Directory user with the specified attributes
    New-AdUser -AccountPassword $password `                  # Set the user password
               -GivenName $first `                           # Set the user's first name
               -Surname $last `                              # Set the user's last name
               -DisplayName $username `                      # Set the display name (e.g., jdoe)
               -Name $username `                             # Set the name attribute (same as username)
               -EmployeeID $username `                       # Set EmployeeID (just using username here)
               -PasswordNeverExpires $true `                 # Ensure password never expires
               -Path "ou=_USERS,$(([ADSI]`"").distinguishedName)" `  # Place the user in the _USERS OU
               -Enabled $true                                # Enable the account upon creation
}
