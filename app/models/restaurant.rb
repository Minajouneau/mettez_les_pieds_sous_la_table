class Restaurant < ApplicationRecord
  after_initialize :set_defaults, unless: :persisted?
  belongs_to :user
  has_many :schedules
  validates :name, :address, presence: true
  has_many :photos, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  
  def set_defaults
    self.activated = false if self.activated.nil?
  end
end
