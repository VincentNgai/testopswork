#
# Cookbook Name:: demoapache
# Recipe:: apache
#
#
package 'apache2' do
  action :install
end

service 'apache2' do
  action [ :enable, :start ]
end

