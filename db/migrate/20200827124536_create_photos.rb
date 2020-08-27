class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.integer :category
      t.integer :position
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
