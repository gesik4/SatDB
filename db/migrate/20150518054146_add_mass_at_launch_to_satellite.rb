class AddMassAtLaunchToSatellite < ActiveRecord::Migration
  def change
    add_column :satellites, :mass_at_launch, :float
  end
end
