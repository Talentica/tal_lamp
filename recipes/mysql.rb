#
# Cookbook Name:: tal_lamp
# Recipe:: mysql
#
# Copyright (C) 2015 Talentica Software Pvt. Ltd
#
# All rights reserved - Do Not Redistribute
#

mysqlpass = data_bag_item("mysql", "root_password")

mysql_service node[:lamp_chef][:mysql][:servicename] do
	port node[:lamp_chef][:mysql][:port]
	version node[:lamp_chef][:mysql][:version]
	initial_root_password mysqlpass["value"]
	action [:create, :start]
end
