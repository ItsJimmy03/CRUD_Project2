
get '/sign_up' do


    erb :'/users/new'

end

post '/users' do

    username = params[:username]
    email = params[:email]
    password = params[:password_digest]

    create_user(username, email, password)
    erb :'/'
end