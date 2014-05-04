#
# Cookbook Name:: autopackage
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# node[:autopackage][:pre].each do |pkg|
# 	act = package pkg do
# 		action :nothing
# 	end
# 	act.run_action(:install)
# end

# node[:autopackage][:normal].each do |pkg|
# 	package pkg do
# 		action :install
# 	end
# end

def create_package(packager, pkg, data)
	case packager
	when "apt_package"
		act = apt_package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	when "dpkg_package"
		act = dpkg_package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	when "easy_install_package"
		act = easy_install_package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	when "freebsd_package"
		act = freebsd_package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	when "ips_package"
		act = ips_package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	when "macports_package"
		act = macports_package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	when "pacman_package"
		act = pacman_package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	when "portage_package"
		act = portage_package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	when "rpm_package"
		act = rpm_package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	when "gem_package"
		act = gem_package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	when "chef_gem"
		act = chef_gem pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	when "smartos_package"
		act = smartos_package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	when "solaris_package"
		act = solaris_package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	when "yum_package"
		act = yum_package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	else
		act = package pkg do
			if data.class == Hash and data["priority"] == "pre"
				action :nothing
			else
				action :install
			end
		end
	end
	return act
end

node[:autopackage].each do |packager, packages|
	packages.each do |pkg, data|
		act = create_package(packager, pkg, data)
		if data.class == Hash and data["priority"] == "pre"
			act.run_action(:install)
		end
	end
end

# node[:autopackage].each do |pkg,data|
# 	# log "DOES THIS WORK?" do
# 	#   level :debug
# 	# end
# 	act = package pkg do
# 		provider Chef::Provider::Package::Rubygems
# 		action :nothing
# 		# log "data.class" do
# 		#   level :debug
# 		# end
# 		if data.class == Hash
# 			# log "DOES THIS HASH?" do
# 			#   level :debug
# 			# end
# 			provider translate_provider(data["provider"])
# 		end
# 	end
# 	act.run_action(:install)

# 	if data.class == Hash and data["priority"] == "pre"
# 		act.run_action(:install)
# 	end
# end

