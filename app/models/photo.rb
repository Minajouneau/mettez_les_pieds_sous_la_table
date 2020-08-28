class Photo < ApplicationRecord
  belongs_to :restaurant
  enum category: [:menu, :foodanddrink, :interior, :exterior, :front, :chef, :staff]
  # scope :chef_category, -> { where(category: :chef) }
  has_one_attached :file
end
