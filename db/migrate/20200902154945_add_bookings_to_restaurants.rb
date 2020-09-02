class AddBookingsToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :booking_url, :string
  end
end