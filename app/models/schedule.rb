class Schedule < ApplicationRecord
  belongs_to :restaurant
  after_initialize :set_defaults, unless: :persisted?

  def set_defaults
    self.closed = true if self.closed.nil?
  end
end
