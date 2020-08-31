class Photo < ApplicationRecord
  belongs_to :restaurant
  enum category: [:food, :exterior, :interior, :staff, :menu]
  # scope :chef_category, -> { where(category: :chef) }
  has_one_attached :file
end
