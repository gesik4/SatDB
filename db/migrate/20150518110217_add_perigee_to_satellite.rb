class AddPerigeeToSatellite < ActiveRecord::Migration
  def change
    add_column :satellites, :perigee, :float
  end
end