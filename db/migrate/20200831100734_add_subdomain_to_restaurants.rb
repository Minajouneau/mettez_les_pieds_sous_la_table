class AddSubdomainToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :subdomain, :string
  end
end
