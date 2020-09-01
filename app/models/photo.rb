class Photo < ApplicationRecord
  belongs_to :restaurant
  enum category: [:food, :exterior, :interior, :staff, :menu]
  CATEGORIES_NAME = {
    "food" => "Plats",
    "exterior" => "Extérieur",
    "interior" => "Intérieur",
    "staff" => "Équipe",
    "menu" => "Menu"
  }
  # scope :chef_category, -> { where(category: :chef) }
  has_one_attached :file
end
