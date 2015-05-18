class AddMassDryToSatellite < ActiveRecord::Migration
  def change
    add_column :satellites, :mass_dry, :float
  end
end
