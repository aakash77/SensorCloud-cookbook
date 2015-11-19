#
# Cookbook Name:: SensorCloud_cookbook
# Recipe:: package_install
#
# Copyright 2015, 281 group 2
#
# All rights reserved - Do Not Redistribute
#

#Install node.js using package manager

#execute "pre_config_nodejs" do
#	command "curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -"
#end

apt_package 'nodejs' do
	action :install
end

#Install npm using package manager
apt_package 'npm' do
	action :install
end

#Creating symbolic link of nodejs to node
link '/usr/bin/nodejs' do
	to '/usr/bin/node'
	link_type :symbolic
end