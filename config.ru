# Example config.ru

require 'sinatra'
require 'grape'
require './app/api'
require './app/web'

use Rack::Session::Cookie
run Rack::Cascade.new [API, Web]