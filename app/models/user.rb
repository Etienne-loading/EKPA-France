class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :formations, dependent: :destroy
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  validates :prenom, presence: true
  validates :nom, presence: true
end
