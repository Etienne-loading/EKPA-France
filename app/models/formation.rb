class Formation < ApplicationRecord
  ORGANISMES = []
  has_one_attached :photo
  has_many :blocs, dependent: :destroy
  belongs_to :user
  belongs_to :organisme

  validates :title, uniqueness: true, presence: true
  validates :description, uniqueness: true, presence: true
  validates :code_rncp, presence: true
  validates :duree, presence: true
  validates :periode, presence: true
end
