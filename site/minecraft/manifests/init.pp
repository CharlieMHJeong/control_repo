class minecraft {
  file { '/opt/minecraft':
    ensure => directory,
  }
  file { '/opt/minecraft/minecraft_server.jar':
    ensure => file,
    source => 'https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar',
  }
  package { 'java':
    ensure => present,
  }
  file { '/opt/minecraft/eula.txt':
    ensure => file,
    content => 'eula=true'
  }
  file { '/etc/systemd/system/minecraft.service':
    ensure => file,
    content => 'eula=true',
    source => 'puppet:///modules/minecraft/minecraft.service',    
  }  
  service { 'minecraft':
    ensure => running,
    enable => true,
  }
}
