class CreateApps < ActiveRecord::Migration[5.1]
    def change
        create_table :apps do |t|

            t.string :slug, unique: true

            t.string :logo
            t.string :name
            t.string :description
            t.boolean :beta, default: false, null: false

            t.string :url
            t.string :post
            t.string :github
            t.string :android
            t.string :ios
            t.string :windows
            t.string :chrome
            t.string :todo

            t.timestamps

        end
    end
end
