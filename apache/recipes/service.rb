#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

service 'apache2' do
  action [:start, :enable]
end
