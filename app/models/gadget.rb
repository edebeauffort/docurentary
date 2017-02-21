class Gadget < ApplicationRecord
  belongs_to :user
  validates :category, :brand, :model, :price, :description, :location, presence: true
  # add geocoding validation (wednesday lecture)
  has_attachments :photos, maximum: 2

def self.search_results(gadget_category, gadget_location)
  Gadget.where("category ILIKE ? AND location ILIKE ?", "%#{gadget_category}%" , "%#{gadget_location}%")
end
end
