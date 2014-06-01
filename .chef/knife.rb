# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "milad"
client_key               "#{current_dir}/milad.pem"
validation_client_name   "milads-chef-validator"
validation_key           "#{current_dir}/milads-chef-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/milads-chef"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
