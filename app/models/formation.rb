class Formation < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :description, uniqueness: true, presence: true
  validates :code_rncp, presence: true
  validates :duree, presence: true
  validates :periode, presence: true
end
