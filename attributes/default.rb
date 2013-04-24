default['unattended_upgrades']['update_package_lists_interval'] = "1"
default['unattended_upgrades']['upgrade_interval'] = "1"
default['unattended_upgrades']['origins'] = ['${distro_id} ${distro_codename}-security']
default['unattended_upgrades']['send_email'] = false
default['unattended_upgrades']['email_address'] = "root@localhost"
default['unattended_upgrades']['auto_remove'] = false
default['unattended_upgrades']['auto_reboot'] = false
