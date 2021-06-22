def all_posts()
    run_sql("SELECT * FROM project;")
end

def all_posts_by_user(id)
    sql_query = "SELECT * FROM project WHERE user_id = $1"
    params = [id]
    run_sql(sql_query, params)
end

def create_post(project_title, project_thumbnail, project_author, project_about, project_main_img, user_id)

    sql_query = "INSERT INTO project(project_title, project_thumbmail, project_author, project_about, project_main_img, user_id) VALUES ($1, $2, $3, $4, $5, $6)"
    params = [project_title, project_thumbnail, project_author, project_about, project_main_img, user_id]
    run_sql(sql_query, params)

 # SQL bolt
end 

def edit_post(title, thumbnail, author, about, main_img, id)

    sql_query = "UPDATE project SET project_title = $1, project_thumbmail  = $2, project_author  = $3, project_about  = $4, project_main_img  = $5 WHERE id = $6)"
    run_sql(sql_query, params)
 # SQL bolt
end 




def delete_post(id)
    run_sql("DELETE FROM project WHERE id = #{id};")
    
end 

