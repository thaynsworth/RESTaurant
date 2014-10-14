require 'bundler'
Bundler.require

require './connection'

ROOT_PATH = Dir.pwd
Dir[ROOT_PATH+"/lib/*.rb"].each{ |file| require file }

###################
## Food
###################



###################
## Parties
###################