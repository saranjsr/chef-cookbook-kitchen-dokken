include_recipe 'nginx::service'

package 'nginx' do
  action :install
end

directory node[:nginx][:dir] do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

directory node[:nginx][:log_dir] do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

%w{sites-available sites-enabled conf.d}.each do |dir|
  directory File.join(node[:nginx][:dir], dir) do
    owner 'root'
    group 'root'
    mode '0755'
  end
end

template "nginx.conf" do
  path "#{node[:nginx][:dir]}/nginx.conf"
  source "nginx.conf.erb"
  owner "root"
  group "root"
  mode 0644
end

service 'nginx' do
  supports status: true
  action [:enable, :start]
end
