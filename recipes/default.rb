#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

apache_name = 'httpd'

if node['platform'] == 'ubuntu'
  include_recipe 'apt::default'
  apache_name = 'apache2'
end

package apache_name do
  action :install
end

service apache_name do
  action [:start, :enable]
end
