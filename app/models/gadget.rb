class Gadget < ApplicationRecord
  belongs_to :user
  validates :category, :brand, :model, :price, :description, :location, presence: true
  # add geocoding validation (wednesday lecture)

def self.search_results(gadget_category, gadget_location)
  where("category ILIKE ? AND location ILIKE ?", "%#{gadget_category}%" , "%#{gadget_location}%")
end

end
