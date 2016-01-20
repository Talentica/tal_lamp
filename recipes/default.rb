#
# Cookbook Name:: tal_lamp
# Recipe:: default
#
# Copyright (C) 2015 Talentica Software Pvt. Ltd
#
# All rights reserved - Do Not Redistribute
#

#Installing Mysql
include_recipe 'tal_lamp::mysql'

#Installing Apache2
include_recipe 'tal_lamp::apache2'

#Installing PHP
include_recipe 'tal_lamp::php'


