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
