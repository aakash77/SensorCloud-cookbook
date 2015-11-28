#
# Cookbook Name:: SensorCloud_cookbook
# Recipe:: configure_openstack
#
# Copyright 2015, 281 group 2
#
# All rights reserved - Do Not Redistribute
#

#creating directory for saving openstack-config file
directory "#{node[:SensorCloud_cookbook][:openstack_config_dir]}" do
	recursive true
	mode "0777"
	action :create
end

#Uploading the openstack-config file in the node
cookbook_file "#{node[:SensorCloud_cookbook][:openstack_config_dir]}/openstack-config.sh" do
	source "openstack-config.sh"
	mode "0777"
	action :create
	notifies :run, 'execute[configure_openstack]', :immediately
end

#Running the openstack configuration script
execute "configure_openstack" do
	cwd "#{node[:SensorCloud_cookbook][:openstack_config_dir]}"
	command "sh openstack-config.sh"
	action :nothing
end

Chef::Log.info("Openstack configured")