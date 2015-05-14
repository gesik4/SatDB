class Country < ActiveRecord::Base
  has_many :agencies
  belongs_to :mentor
  validates :name, presence: true, uniqueness: true
end