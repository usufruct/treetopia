require 'active_record' 
ActiveRecord::Base.establish_connection(
    adapter: 'postgresql',
    username: ENV['DB_USER'],
    password: ENV['DB_PASS'],
    database: ENV['DB_NAME'],
    schema_format: :sql
)
