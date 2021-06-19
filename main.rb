require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

enable :sessoins

require_relative 'db/db'
require_relative 'models/posts'
require_relative 'models/users'
require_relative 'helpers/sessions_helper'
require_relative 'controllers/posts_controller'
require_relative 'controllers/users_controller'
require_relative 'controllers/sessions_controller'

get '/' do
    allPosts = all_posts();
    erb :index, locals: {allPosts: allPosts}
end