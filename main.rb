require 'sinatra'
require 'sinatra/reloader' if development?

require_relative 'controllers/users'
require_relative 'controllers/sessions_controller'

get '/' do

    erb :index
end