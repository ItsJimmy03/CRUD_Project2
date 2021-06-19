require 'bcrypt'

def create_user(username, email, password)

    password_digest = BCrypt::Password.create(password)
    sql_query = "INSERT INTO users(user_name, email, password_digest) VALUES('#{username}', '#{email}', '#{password_digest}')"
    run_sql(sql_query)
end


def find_user_by_email(email)

    sql_query = "SELECT * FROM users WHERE email = #{email}"
    results = run_sql(sql_query)

    # Should return either a single User hash, or nil if not found
    if results.to_a.length > 0
        return results[0]
    else
        return nil
    end
end