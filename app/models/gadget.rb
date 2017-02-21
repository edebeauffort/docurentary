class Gadget < ApplicationRecord
  belongs_to :user
  validates :category, :brand, :model, :price, :description, :location, presence: true
  # add geocoding validation (wednesday lecture)
  has_attachments :photos, maximum: 2

end
