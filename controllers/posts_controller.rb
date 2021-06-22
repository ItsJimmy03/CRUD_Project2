get '/create' do

    erb :'/artwork/create'
end

get '/dashboard' do 

    id = session[:user_id]
    projects = all_posts_by_user(id)

    erb :'/users/dashboard', locals: {projects: projects}
end




post '/create' do
    id = params[:id]
    project_title = params[:project_title]
    project_thumbnail = params[:project_thumbmail]
    project_author = params[:project_author]
    project_about = params[:project_about]
    project_main_img = params[:project_main_img]
    user_id = session[:user_id]

    create_post(project_title, project_thumbnail, project_author, project_about, project_main_img, user_id)

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
