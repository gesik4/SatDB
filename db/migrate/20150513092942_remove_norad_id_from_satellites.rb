class RemoveNoradIdFromSatellites < ActiveRecord::Migration
  def change
    remove_column :satellites, :norad_id, :integer
  end
end
