class Dojo < ApplicationRecord
  has_many :dojo_editors
  has_many :users, through: :dojo_editors
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :prefecture
    validates :municipalities
    validates :address
    validates :phone_number
    validates :rule
    
end
