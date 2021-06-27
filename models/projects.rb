def all_projects()
    run_sql("SELECT * FROM projects;")
end

def all_projects_by_user(id)
    sql_query = "SELECT * FROM projects WHERE user_id = $1"
    params = [id]
    run_sql(sql_query, params)
end

def create_project(project_title, project_thumbnail, project_author, project_about, project_main_img, user_id)

    sql_query = "INSERT INTO projects(project_title, project_thumbmail, project_author, project_about, project_main_img, user_id) VALUES ($1, $2, $3, $4, $5, $6)"
    params = [project_title, project_thumbnail, project_author, project_about, project_main_img, user_id]
    run_sql(sql_query, params)

 # SQL bolt
end 


def individual_project (id)
    sql_query = "SELECT * FROM projects WHERE id = $1;"
    params = [ id ]
    results = run_sql(sql_query, params)
end

def edit_project(project_title, project_thumbnail, project_author, project_about, project_main_img, id)

    sql_query = "UPDATE projects SET project_title = $1, project_thumbmail  = $2, project_author  = $3, project_about  = $4, project_main_img  = $5 WHERE id = $6"
    params = [project_title, project_thumbnail, project_author, project_about, project_main_img, id]
    run_sql(sql_query, params)
 # SQL bolt
end 




def delete_project(id)
    sql_query = "DELETE FROM projects WHERE id =$1"
    params = [id]
    run_sql(sql_query, params)
end 

