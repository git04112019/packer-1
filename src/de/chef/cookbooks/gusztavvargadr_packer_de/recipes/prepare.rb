include_recipe 'gusztavvargadr_packer_w::prepare'

gusztavvargadr_docker_engine 'enterprise' do
  action :prepare
end

windows_service 'winrm' do
  action :configure_startup
  startup_type :automatic
  delayed_start true
end
