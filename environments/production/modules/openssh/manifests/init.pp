class openssh {
	package { 'ssh':
		ensure	=> installed,
	}
	service { 'ssh':
		ensure	=> running,
		enable	=> true,
	}
}
