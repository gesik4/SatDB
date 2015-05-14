class AddMentorToCountry < ActiveRecord::Migration
  def change
    add_reference :countries, :mentor, index: true
    add_foreign_key :countries, :mentors
  end
end
