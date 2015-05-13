class AddMentorToOrbit < ActiveRecord::Migration
  def change
    add_reference :orbits, :mentor, index: true
    add_foreign_key :orbits, :mentors
  end
end
