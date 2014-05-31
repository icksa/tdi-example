#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user "tdi" do
  action :create
  comment "Test Driven Infrastructure"
  home "/home/tdi"
  supports :manage_home => true
  shell "/bin/bash"
end

package "irssi"

directory "/home/tdi/.irssi" do
  action :create
  owner "tdi"
  group "tdi"
end

cookbook_file "irssi_config" do
  action :create
  path "/home/tdi/.irssi/config"
  owner "tdi"
  group "tdi"
end
