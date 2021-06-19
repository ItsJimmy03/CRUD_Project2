
get '/sign_up' do


    erb :'/users/new'

end

post '/users' do

    username = params[:user_name]
    email = params[:email]
    password = params[:password]

    create_user(username, email, password)
    erb :'/'
end