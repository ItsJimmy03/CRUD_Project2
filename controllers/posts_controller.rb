get '/create' do

    erb :'/artwork/create'
end


post '/create' do
    id = params[:id]
    title = params[:project_title]
    thumbnail = params[:project_thumbmail]
    author = params[:project_author]
    about = params[:project_about]
    main_img = params[:project_main_img]
    user_id = session[:user_id]

    create_post(title, thumbnail, author, about, main_img, users_id)

    redirect '/'

end

put '/create/:id/edit' do

    id = params[:id]
    title = params[:project_title]
    thumbnail = params[:project_thumbmail]
    author = params[:project_author]
    about = params[:project_about]
    main_img = params[:project_main_img]
    
    edit_post(title, thumbnail, author, about, main_img, id)

    redirect '/'
end


delete '/create/:id' do

    id = params['id']
    delete_post(id)

    redirect '/'

end
