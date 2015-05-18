class AddPowerToSatellite < ActiveRecord::Migration
  def change
    add_column :satellites, :power, :float
  end
end
