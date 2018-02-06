class CreateRepositories < ActiveRecord::Migration[5.1]
    def change
        create_table :repositories do |t|

            t.string :slug, unique: true

            t.string :logo
            t.string :name
            t.string :description
            t.string :language

            t.string :github
            t.string :demo
            t.string :rubygems
            t.string :npm
            t.string :todo

            t.timestamps

        end
    end
end
