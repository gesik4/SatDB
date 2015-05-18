class AddInclinationToSatellite < ActiveRecord::Migration
  def change
    add_column :satellites, :inclination, :float
  end
end
