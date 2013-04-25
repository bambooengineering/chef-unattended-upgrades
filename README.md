chef-unattended-upgrades
========================

Chef cookbook for installing and configuring the unattended-upgrades package on Ubuntu

Requirements
============

Requires Ubuntu and the `apt` package. Only tested on 12.04 LTS.

Usage
=====

Simply include the recipe `unattended-upgrades`.

In the default configuration, this recipe will perform daily security upgrades.

If the `send_email` attribute is true, the `mailtools` package will be
installed as well.

Attributes
==========

 * node['unattended-upgrades']['origins'] - 
    An array containing (origin,archive) pairs.  Controls where 
    packages can be installed from. Defaults to 
    `${distro_id} ${distro_codename}-security` 
 * node['unattended-upgrades']['update_package_lists_interval'] -
    The number of days between package list updates. Defaults to `1`.
 * node['unattended-upgrades']['upgrade_interval'] -
    The number of days between package upgrades. Defaults to `1`.
 * node['unattended-upgrades']['send_email'] -
    Whether email should be sent. Boolean.  Defaults to false.
 * node['unattended-upgrades']['email_address'] -
    Address for email reports. Defaults to "root@localhost".
 * node['unattended-upgrades']['auto_remove'] -
    Whether unneeded deps should be removed. Boolean.  Defaults to false.
 * node['unattended-upgrades']['auto_reboot'] -
    Whether required reboots should happen automatically. Boolean.  Defaults to false.
