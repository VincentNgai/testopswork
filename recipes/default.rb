execute "update-upgrade install ntop" do
  command "apt-get update && apt-get install git ntop"
  action :run
end

package 'apache2' do
  action :install
end

service 'apache2' do
  action [ :enable, :start ]
end

cookbook_file '/var/www/index.html' do
  source 'index.html'
  mode '0644'
end

