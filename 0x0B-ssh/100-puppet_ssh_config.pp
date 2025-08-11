# Using Puppet to make changes to our configuration file to:
# configure SSH client to use the private key ~/.ssh/school
# configure SSH client to refuse to authenticate using a password

file_line { 'use_private_key':
  path  => '/etc/ssh/ssh_config',
  line  => 'IdentityFile ~/.ssh/school',
  match => '^IdentityFile',
}

file_line { 'disable_password_auth':
  path  => '/etc/ssh/ssh_config',
  line  => 'PasswordAuthentication no',
  match => '^PasswordAuthentication',
}
