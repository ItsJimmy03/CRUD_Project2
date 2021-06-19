
get '/sign_up' do


    erb :'/users/new'

end

post '/posts' do

    username = params[:username]
    email = params[:email]
    password = params[:password]

    create_user(username, email, password)
    erb :'/'
end