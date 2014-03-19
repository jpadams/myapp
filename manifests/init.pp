class myapp {

  file { 'C:/myapp':
    ensure => directory,
  }

  file { 'C:/myapp/frontend':
    ensure  => directory,
    source  => "${::curr_dir}/frontend",
    recurse => true,
  } 

}
