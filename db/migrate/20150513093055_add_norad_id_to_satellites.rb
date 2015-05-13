class AddNoradIdToSatellites < ActiveRecord::Migration
  def change
    add_column :satellites, :norad_id, :string
  end
end
