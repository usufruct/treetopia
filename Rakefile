namespace :db do
    require './config/db_config'

    desc 'Creates a blank db'
    task :create do
        puts 'db:create'
        ActiveRecord::Base.connection.create_database(ENV['DB_NAME'], encoding: 'unicode')
    end

    desc 'Drop the db'
    task :drop do
        puts 'db:drop'
        ActiveRecord::Base.connection.drop_database(ENV['DB_NAME'])
    end

    desc 'Migrate to the latest version'
    task :migrate do
        puts 'db:migrate'
    end

    desc 'Rollback the most recent migration'
    task :rollback do
        puts 'db:rollback'
    end

    desc 'Current migration version'
    task :version do
        puts 'db:version'
        puts "Current db version: #{ActiveRecord::Migrator.current_version}"
    end
end
