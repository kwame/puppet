file {'/tmp/example-ip':                                            # resource type file and filename
  ensure  => present,                                               # make sure it exists
  mode    => '0644',                                                # file permissions
  content => "Here is my Public IP Address: ${ipaddress_eth0}.\n",  # note the ipaddress_eth0 fact
}

node 'centos7-1', 'porter'{
  accounts::user { 'josue':
  	uid    => '5002',
	gid      => '5002',
	shell    => '/bin/bash',
	locked   => false,
	password => '!!',
  }
  accounts::user { 'solange': 
    uid 	 => '5001',
    gid          => '5001',
    shell    	 => '/usr/bin/ksh',
    password	 => '!!',
    locked    	 => false, 
    }
  accounts::user { 'kwame':
  	comment => 'Kwame Bahena',
  	uid     => '1050',
	gid       => '1050',
	shell     => '/bin/bash',
	locked    => false,
	sshkeys => [
		'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCcEmDTD96wOB+wNagAeE6RY2IQmjW2VLozval4qInovwFHDfKi6b1/Wd7BPavCR/pG4J+c8EWgl6FiPEA9403ZjAbnuM2huBIeUQNSwYvwK/AniPlO0MDHOYw3XER5WbDiubOeYc55e0YmNDwhOtajD6nI3nI0nwQ+8J34ZnM0ovAyHG6SPhtjK/k5qc6Hb4/rrMMzo39ckwb+TaGfO4WWVKuDPcQqv3JbvILdMmpKD9GzC0xjBERfHnzDhOXHWEEp+iY3+MzEyTjd0dR9VdT0oqQLI9vhMLUzzCCkcPS9WsW3S1vWu9FvQvJw9bkn38UY1WxQDfLL9qZ1khT4XbYT kwame@informatux.net',
	],
 }
}
