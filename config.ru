# Example config.ru

require 'require_all'
require 'mongoid'
require 'sinatra'
require 'grape'
require './app/api'
require './app/web'

require_all 'app/models'

Mongoid.load!("./config/mongoid.yml")

use Rack::Session::Cookie
run Rack::Cascade.new [API, Web]