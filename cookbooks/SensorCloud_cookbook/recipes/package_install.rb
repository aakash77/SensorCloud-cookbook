#
# Cookbook Name:: SensorCloud_cookbook
# Recipe:: package_install
#
# Copyright 2015, 281 group 2
#
# All rights reserved - Do Not Redistribute
#

#Install node.js using package manager
execute "pre_config_nodejs" do
	command "curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -"
end

execute "install_nodejs" do
	command "sudo apt-get install -y nodejs"
end


execute "install_build-essential" do
	command "sudo apt-get install -y build-essential"
end


#Creating symbolic link of nodejs to node
execute "link_nodejs_node" do
	command "sudo ln -sf /usr/bin/nodejs /usr/bin/node"
end