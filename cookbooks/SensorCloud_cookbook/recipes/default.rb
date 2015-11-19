#
# Cookbook Name:: SensorCloud_cookbook
# Recipe:: default
#
# Copyright 2015, 281 group 2
#
# All rights reserved - Do Not Redistribute
#

log "Welcome to the 281-app deployment on #{node['hostname']} of type #{node['platform']}"


#Install packages required for this application
include_recipe "SensorCloud_cookbook::package_install"

#Create source directory and download source code
include_recipe "SensorCloud_cookbook::install_source_code"


log "Deployment completed"