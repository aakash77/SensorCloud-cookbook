#Absolute path of this file
root = File.absolute_path(File.dirname(__FILE__))

file_cache_path '/var/chef'
cookbook_path root+'/cookbooks/'
json_attribs root+'/node.json'