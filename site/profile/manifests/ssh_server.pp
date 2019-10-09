class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC1+f3ME/DRnaqwyltIJSSywRSIilo4cTz6nITGEsvkDje4WGxyx+71OMpEk1I3NJB9Yg4XdlDGfjfYlfwefH4HRS10XKXr2DGEXauDuZrj7T1Muqk364hzQWlzOdAVWbQKV5AgvYOlycCjn526l/AyJ3qJFYcG8qj/CgOomP+lWtNWlZBGN1oa/gDqX/D1ztCZ9n7qSVOv4YwhiWRNlIRJ5JqCvPG2eFKKuze267MsUkBy1gZf5pAhncNP5Af6D4a0p4vzhJgyn+pGsOf24jVIAaYF6uR79EwOqIccQWBhRinKN7dUXQ9sWaN1Z8EfyaPZoMH0PxzBeWUfpOvD9rvX',
	}  
}

