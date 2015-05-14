class Satellite < ActiveRecord::Base
  belongs_to :orbit
  has_one :mentor, through: :orbit
  belongs_to :compression
  has_one :mentor, through: :compression
  validates :acronym, :full_name, :nssdc_id, :norad_id, presence: true
end
