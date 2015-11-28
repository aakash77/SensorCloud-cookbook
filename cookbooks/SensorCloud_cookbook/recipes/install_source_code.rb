#
# Cookbook Name:: SensorCloud_cookbook
# Recipe:: install_source_code
#
# Copyright 2015, 281 group 2
#
# All rights reserved - Do Not Redistribute
#

#create root directory for the app source
directory "#{node[:SensorCloud_cookbook][:app_root]}" do
	recursive true
	mode "0777"
	action :create
end

#install source from git
git "#{node[:SensorCloud_cookbook][:app_root]}" do
	repository node[:SensorCloud_cookbook][:git_repo_url]
	revision node[:SensorCloud_cookbook][:git_repo_revision]
	action :sync
end

Chef::Log.info("Source code downloaded")