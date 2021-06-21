require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

enable :sessions

require_relative 'db/db'
require_relative 'models/posts'
require_relative 'models/users'
require_relative 'helpers/sessions_helper'
require_relative 'controllers/posts_controller'
require_relative 'controllers/users_controller'
require_relative 'controllers/sessions_controller'

get '/' do
    session[:user_id]
    projects = all_posts();
    erb :index, locals: {projects: projects}
end