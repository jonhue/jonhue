class CreateFeatures < ActiveRecord::Migration[5.1]
  def change
    create_table :features do |t|
      t.string :image
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
