class logic {
	if $::hostname == 'puppetnode1' {
		file { '/root/logic1':
			ensure => present,
		}
	}
}

