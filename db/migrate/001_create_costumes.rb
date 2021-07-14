# Create a class and inherit from ActiveRecord::Migration

# By convention, the class name should match the part of the
# file name after the number, so in this case:
# 002_create_costumes.rb becomes class CreateCostumes

# Define a change method in which to do the migration
# In this change method, create columns with the correct names and 
# value types according to the spec

# !!! Before you run rake db:migrate, remember to fill out the other migration files -- otherwise you'll get an error resulting from the blank migration files.


# naming conventions

# what are we trying to do? 
# create a table called costumes

class CreateCostumes < ActiveRecord::Migration[5.2]
    # def up
    #     # method to be run when rake db:migrate is executed
    # end

    # def down
    #     # method to be run when rake db:rollback is executed
    # end

    def change
        # combines up and down
        create_table :costumes do |t|
            t.string :name
            t.string :size
            t.string :image_url
            t.float :price 

            t.timestamps
        end
    end

end


# sql = <<-SQL
#   CREATE TABLE IF NOT EXISTS artists (
#   id INTEGER PRIMARY KEY,
#   name TEXT,
#   genre TEXT,
#   age INTEGER,
#   hometown TEXT
#   )
# SQL