class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :prenom, :string
    add_column :users, :nom, :string
    add_column :users, :vision, :text
    add_column :users, :parcours, :text
  end
end
