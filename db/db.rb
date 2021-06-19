def run_sql(sql_query)
    connection = PG.connect(ENV['DATABASE_URL'] || {dbname: 'portfolio'})
    results = connection.exec(sql_query)
    connection.close
  
    return results
  end