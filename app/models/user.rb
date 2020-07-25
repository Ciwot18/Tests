class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  belongs_to :avatar
  has_many :vehicles
end