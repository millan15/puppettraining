node puppetnode1.rps  {
	file { "/root/${fqdn}":
		ensure => present,
		content	=> "hello i am ${hostname}",
	}
	$host_name=::fqdn
	include xyz
	include abc
	include ntp
#	include openssh
#	include apache2
	include hostname
	include logic
	include nginx
}
node puppetnode2.rps  {
	file { "/root/${fqdn}":
		ensure => present,
		content => "hello i am ${hostname}",
	}
	include openssh
#	include apache2
	include hostname
	include logic
	include nginx
}

node default {
} 

