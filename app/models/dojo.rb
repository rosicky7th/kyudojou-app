class Dojo < ApplicationRecord
  
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :prefecture
    validates :municipalities
    validates :address
    validates :phone_number
    validates :rule
    
end
