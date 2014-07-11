maintainer        "First Banco"
maintainer_email  "rob@firstbanco.com"
license           "Apache 2.0"
description       "Configures the Ubuntu unattended-upgrades package"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.1"
recipe            "unattended-upgrades", "Installs and configures the unattended-upgrades package"
name              "chef-unattended-upgrades"

depends 'apt'
supports 'ubuntu'
