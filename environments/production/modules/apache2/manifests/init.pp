class apache2 {
	package { 'apache2':
		ensure	=> installed,
	}
	service { 'apache2':
		ensure 	=> running,
		enable	=> true,
	}
	file { '/var/www/html/index.html':
		ensure	=> present,
		source  => 'puppet:///modules/apache2/abc.txt',	
	}
}
