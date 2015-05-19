class AddMentorToPolygon < ActiveRecord::Migration
  def change
    add_reference :polygons, :mentor, index: true
    add_foreign_key :polygons, :mentors
  end
end
