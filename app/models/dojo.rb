class Dojo < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :prefecture
    validates :municipalities
    validates :address
    validates :phone_number
    validates :rule
    
end
