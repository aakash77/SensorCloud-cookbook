#
# Cookbook Name:: SensorCloud_cookbook
# Attributes:: default
#
# Copyright 2015, 281 group 2
#
# All rights reserved - Do Not Redistribute
#

#Root Directory
default[:SensorCloud_cookbook][:app_root] = "/usr/home/SensorCloud-App"

default[:SensorCloud_cookbook][:openstack_config_dir] = "#{node[:SensorCloud_cookbook][:app_root]}/openstack"

#Git
default[:SensorCloud_cookbook][:git_repo_url] = "https://github.com/aakash77/SensorCloud-App.git"
default[:SensorCloud_cookbook][:git_repo_revision] = "master"
