class Booking < ApplicationRecord
  belongs_to :gadget
  belongs_to :user
  validates :start_date, :end_date, presence: true
  #validates_datetime :start
  #validates_datetime :stop, :after => :start
end
