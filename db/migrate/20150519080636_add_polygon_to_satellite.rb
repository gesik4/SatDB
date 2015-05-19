class AddPolygonToSatellite < ActiveRecord::Migration
  def change
    add_reference :satellites, :polygon, index: true
    add_foreign_key :satellites, :polygons
  end
end
