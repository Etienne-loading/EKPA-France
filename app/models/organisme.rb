class Organisme < ApplicationRecord
  has_many :formations, dependent: :destroy
end
