def all_posts()
    run_sql("SELECT * FROM project;")
end

def create_post(title, thumbnail, author, about, main_img, user_id)

    sql_query = "INSERT INTO project(project_title, project_thumbmail, project_author, project_about, project_main_img, user_id) VALUES ($1, $2, $3, $4, $5, $6)"
    params = (title, thumbnail, author, about, main_img, user_id)
    run_sql(sql_query, params)
    
 # SQL bolt
end 

def edit_post(title, thumbnail, author, about, main_img, id)

    sql_query = "UPDATE project SET project_title = #{title}, project_thumbmail  = #{thumbnail}, project_author  = #{author}, project_about  = #{about}, project_main_img  = #{main_img} WHERE id = #{id})"
    run_sql(sql_query)
 # SQL bolt
end 




def delete_post(id)
    run_sql("DELETE FROM project WHERE id = #{id};")
    
end 

