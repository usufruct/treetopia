def clear_db()
    tables_sql = <<~TABLES
        SELECT table_name
          FROM information_schema.tables
         WHERE table_type = 'BASE TABLE'
           AND table_schema = 'public'
           AND table_name != 'ar_internal_metadata'
           AND table_name != 'schema_migrations'
         ORDER BY table_name;
    TABLES

    conn = ActiveRecord::Base.connection
    tables = conn.execute(tables_sql).map{|row| row["table_name"]}

    tables.each {|table| conn.execute("TRUNCATE TABLE #{table} CASCADE")}
end

RSpec.configure do |config|
    config.before(:suite) do
        clear_db
    end

    config.before(:each) do
        clear_db
    end
end
