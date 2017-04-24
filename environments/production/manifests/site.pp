node default  {
	file { '/root/demofile.txt':
		ensure => present,
		content	=> "hello i am from file resource-xyz",
	}
}

