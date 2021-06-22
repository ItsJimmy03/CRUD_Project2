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

get '/create/:id/edit' do
    id = params[:id]
    results = individual_post(id)

    erb :'/artwork/edit', locals: {post: results}
end

put '/create/:id/edit' do

    id = params[:id]
    project_title = params[:project_title]
    project_thumbnail = params[:project_thumbmail]
    project_author = params[:project_author]
    project_about = params[:project_about]
    project_main_img = params[:project_main_img]
    user_id = session[:user_id]

    edit_post(project_title, project_thumbnail, project_author, project_about, project_main_img, user_id)

    redirect '/'
end

delete '/create/:id' do

    id = params['id']
    delete_post(id)

    redirect '/'

end
