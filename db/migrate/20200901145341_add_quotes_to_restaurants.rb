class AddQuotesToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :quote_one, :string
    add_column :restaurants, :quote_two, :string
    add_column :restaurants, :quote_three, :string
  end
end
