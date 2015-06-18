class Country < ActiveRecord::Base
  has_many :agencies
  belongs_to :mentor
  has_and_belongs_to_many :satellites
  validates :name, presence: true, uniqueness: true
end