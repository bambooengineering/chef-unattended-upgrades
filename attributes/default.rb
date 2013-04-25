default['unattended-upgrades']['update_package_lists_interval'] = "1"
default['unattended-upgrades']['upgrade_interval'] = "1"
default['unattended-upgrades']['origins'] = ['${distro_id} ${distro_codename}-security']
default['unattended-upgrades']['send_email'] = false
default['unattended-upgrades']['email_address'] = "root@localhost"
default['unattended-upgrades']['auto_remove'] = false
default['unattended-upgrades']['auto_reboot'] = false
