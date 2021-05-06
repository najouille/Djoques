class Djoque < ApplicationRecord
  belongs_to :djoker  
  has_many :likes
end
