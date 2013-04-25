include_recipe 'apt'

package 'unattended-upgrades' 

if node['unattended-upgrades']['send_email']
    package 'mailutils'
end

template '/etc/apt/apt.conf.d/50unattended-upgrades' do
	owner 'root'
	group 'root'
	mode '0644'
	source '50unattended-upgrades.erb'
end

template '/etc/apt/apt.conf.d/20auto-upgrades' do
	owner 'root'
	group 'root'
	mode '0644'
	source '20auto-upgrades.erb'
end
