class nginx {
	file { '/usr/share/nginx/html/index.html':
		ensure => present,
#		source => 'puppet:///modules/nginx/index.html',
#		notify => Service['nginx'],
		content => template('nginx/index.html.erb'),
		require => Package['nginx'],
	}
	service { 'nginx':
		ensure => running,
		require => Package['nginx'],
		hasrestart => true,
	}
	package { 'nginx':
		ensure => installed,
	}
}
