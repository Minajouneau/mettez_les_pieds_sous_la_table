class AddSocialLinksToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :instagram_url, :string
    add_column :restaurants, :twitter_url, :string
    add_column :restaurants, :facebook_url, :string
  end
end
