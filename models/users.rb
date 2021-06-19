require 'bcrypt'

def add_user(username, email, password)

    password_digest = BCrypt::Password.create(password)
    sql_query = "INSERT INTO users(username, email, password_digest) VALUES('#{username}',#{email}', '#{password_digest}');";
  run_sql(sql_query
end
