#
# Cookbook Name:: autopackage
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node[:autopackage][:pre].each do |pkg|
	act = package pkg do
		action :nothing
	end
	act.run_action(:install)
end

node[:autopackage][:normal].each do |pkg|
	package pkg do
		action :install
	end
end
