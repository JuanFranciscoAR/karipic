class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.text :url
      t.string :description
      t.references :imageable, polymorphic: true, null: false # su llave foranea es polimorfica

      t.timestamps
    end
  end
end
