#
# Cookbook:: task6
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

user "User1" do
  action :create
end

package "clamav" do
  action :install
end

directory "C:\cheftask\task6\testDirectory" do
  owner "User1"
  mode "0755"
  action :create
end
