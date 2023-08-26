class DojoEditor < ApplicationRecord
  belongs_to :user
  belongs_to :dojo
end
