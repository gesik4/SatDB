class Mentor < ActiveRecord::Base
  has_secure_password
  validates :name, presence: true, uniqueness: true
  validates :password, length: { minimum: 8 }
  has_many :orbits
  has_many :compressions
  has_many :countries
  has_many :polygons
  has_many :satellites, through: :orbits
  has_many :satellites, through: :compressions
  has_many :agencies, through: :countries
end