class AddPhoneNumberToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :phone_number, :string
  end
end
