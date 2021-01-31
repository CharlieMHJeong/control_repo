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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDDlF7S41rw38E9EoyVXyPLU7P6PvXefxecognMxTUlHEytcYCS11afEqlnO4QmwpkWEpYILfekOI9VsOJu2g8SAAFty2lb6FqAJiOhMyNkikmj9dFE5AcztbfgkhIZ2d1fEcI4kGVWf/ORrXQ0yuOxNv5juieYPp++Q3Q/ORfyBFP4RLdEylVAQJW78QSMguCI29ya+4lv+BdnjG5mgTSevzot6tQ8ic/hB0qGLh00pmf0DsLv3d+9U9JtBX7XzLbBnZRW6Qn4u8Ox2GeByzzXdgUR1IjHMUfD/RWHdCCzqE6MzINbg0Lmrg+qr3+oBT6Og5NBNNpMV8fn9gLBsxrn',
	}  
}
