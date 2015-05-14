class Country < ActiveRecord::Base
  has_many :agencies
  validates :name, presence: true, uniqueness: true
end