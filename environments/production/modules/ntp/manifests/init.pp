class ntp {
	package { 'ntp':
		ensure	=> present,
	}
	service { 'ntp':
		ensure	=> running,
		enable	=> true,
	}
}
