# == Class: docker::systemd_reload
#
# For systems that have systemd
#
class docker::systemd_reload {
  exec { 'docker-systemd-reload':
    command     => 'systemctl daemon-reload',
    path        => '/bin:/usr/bin',
    refreshonly => true,
  }
}
