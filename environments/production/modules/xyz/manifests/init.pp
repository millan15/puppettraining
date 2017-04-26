class xyz ($host_name="abc") {
	file { '/root/xyz.txt':
		ensure => present,
		content => "${::fqdn}\n\n",
	}
	notify { 'hello':
	message => "notify resource used",
	}
#	exec { 'command':
#	command => "/usr/sbin/service ssh stop",
#	}
	include xyz::user
	include xyz::group1::group1
}
