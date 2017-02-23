class Review < ApplicationRecord
  belongs_to :gadget
   RATINGS = [0,1,2,3,4,5]

  validates :context, presence: true
  validates :rating, numericality: true, inclusion: {in: RATINGS, allow_nil: false}
end
