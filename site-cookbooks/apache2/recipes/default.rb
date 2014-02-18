#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node['apache2']['server']['packages'].each{|pkg|
	package pkg do
		action :install
	end
}

service "httpd" do
	supports :start=>true, :stop=>true, :restart=>true
	action[:start]
end

#template "httpd.conf" do
#	path "/usr/local/apache2/httpd.conf"
#	source "httpd.conf.erb"
#	owner "apache"
#	group "apache"
#	mode 0644
#	notifies :restart, 'service[httpd]'
#end
