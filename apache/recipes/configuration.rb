#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

file '/var/www/html/index.html' do
  content 'Hello World !!'
  mode '0755'
  owner 'root'
  group 'root'
end
