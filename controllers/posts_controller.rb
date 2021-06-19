get '/create' do

    erb :'/artwork/create'
end


post '/create' do
    title = params[:project_title]
    thumbnail = params[:project_thumbmail]
    author = params[:project_author]
    about = params[:project_about]
    main_img = params[:project_main_img]

    create_post(title, thumbnail, author, about, main_img)

    redirect '/'

end


delete '/create' do

    id = params[:id]
    delete_post(id)

    redirect '/'

end
