class Orbit < ActiveRecord::Base
  has_many :satellites
  belongs_to :mentor
  validates :name, presence: true, uniqueness: true
end