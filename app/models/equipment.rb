class Equipment < ApplicationRecord
  belongs_to :user
  validates :category, :brand, :model, :price, :description, :location, presence: true
  # add geocoding validation (wednesday lecture)
end




  #create_table "equipment", force: :cascade do |t|
    #t.string   "category"
    #t.string   "brand"
    #t.string   "model"
    #t.integer  "price"
    #t.text     "description"
    #t.text     "accessories"
    #t.string   "location"
    #t.integer  "user_id"
    #t.datetime "created_at",  null: false
    #t.datetime "updated_at",  null: false
    #t.index ["user_id"], name: "index_equipment_on_user_id", using: :btree
  #end


  #class Equipment < ActiveRecord::Base
   # geocoded_by :location
    #validates :location, presence: true
    #after_validation :geocode, :if => :location_changed?
  #end
