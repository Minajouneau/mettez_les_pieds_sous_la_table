class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :contact_email
      t.boolean :activated
      t.string :domain_name
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
