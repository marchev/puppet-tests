package {
    'git': ensure  => installed;
	'vim': ensure => installed;
	'tree': ensure => installed;
}

include '::ntp'

class {'::mongodb::server':
  auth => true,
}

mongodb::db { 'mydb':
  user          => 'user',
  password_hash => 'a15fbfca5e3a758be80ceaf42458bcd8',
}
