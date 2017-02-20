class Equipment < ApplicationRecord
  belongs_to :user
  validates :category presence: true,
  validates :brand presence: true,
  validates :model presence: true,

end
