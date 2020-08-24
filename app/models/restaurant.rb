class Restaurant < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :name, presence: true
end
