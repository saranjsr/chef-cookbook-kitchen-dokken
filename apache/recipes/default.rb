#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'apache::install'
include_recipe 'apache::configuration'
include_recipe 'apache::service'
