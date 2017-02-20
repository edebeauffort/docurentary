class Equipment < ApplicationRecord
  belongs_to :user
  validates :category, :brand, :model, :price, :description, :location, presence: true
  # add geocoding validation (wednesday lecture)
end


  #class Equipment < ActiveRecord::Base
   # geocoded_by :location
    #validates :location, presence: true
    #after_validation :geocode, :if => :location_changed?
  #end
