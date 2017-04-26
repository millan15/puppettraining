class abc {
	file { ['/root/abc.txt','/root/abd.txt','/root/abe.txt']:
	ensure => present,
	content => "abc",
	}
}
