require 'sinatra'
require 'sinatra/reloader' if development?

enable :sessoins

require_relative 'db/db'
require_relative 'models/posts'
require_relative 'models/users'
require_relative 'controllers/users'
require_relative 'controllers/sessions_controller'

get '/' do

    erb :index
end