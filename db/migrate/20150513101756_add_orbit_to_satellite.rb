class AddOrbitToSatellite < ActiveRecord::Migration
  def change
    add_reference :satellites, :orbit, index: true
    add_foreign_key :satellites, :orbits
  end
end
