class DoesSomething < ActiveRecord::Migration[5.1]
    def change
        create_table :did_something do |t|
            t.string :name
            
            t.timestamps
        end
    end
end
