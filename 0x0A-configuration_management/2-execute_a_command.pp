# Kills a process name killmenow

exec { 'kill killmenow_process':
  path     => '/bin:/usr/bin',
  command  => 'pkill killmenow',
  onlyif => 'pgrep -f killmenow',
}
