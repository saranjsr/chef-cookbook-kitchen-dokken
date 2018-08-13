#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package %w( apache2 curl net-tools ) do
  action :install
end 
