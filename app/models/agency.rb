class Agency < ActiveRecord::Base
  belongs_to :country
  has_one :mentor, through: :country
end
