class AddApogeeToSatellite < ActiveRecord::Migration
  def change
    add_column :satellites, :apogee, :float
  end
end
