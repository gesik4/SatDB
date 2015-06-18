class Satellite < ActiveRecord::Base
  belongs_to :orbit
  has_one :mentor, through: :orbit
  belongs_to :compression
  has_one :mentor, through: :compression
  has_and_belongs_to_many :countries
  validates :acronym, presence: true
end
