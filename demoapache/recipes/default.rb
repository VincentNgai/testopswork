execute "update-upgrade" do
  command "apt-get update && apt-get install git ntop"
  action :run
end
