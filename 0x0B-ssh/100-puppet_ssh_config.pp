#modifies configuration file
include stdlib
file_line { 'Declare identity file':
path    => 'Users/ADMIN/.ssh/config',
line    => '   IdentityFile ~/.ssh/school',
replace => true,
}

file_line { 'Turn off password auth':
path    => 'Users/ADMIN/.ssh/config',
line    => '   PasswordAuthentication no',
replace => true,
}
