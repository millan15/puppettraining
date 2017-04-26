class hostname ($var1="I am Variable 1",$fqdn="customhostname"){
	file { "/root/${hostname}":
	ensure => present,
	content => "${fqdn}",

	}
}
