class AddPeriodToSatellite < ActiveRecord::Migration
  def change
    add_column :satellites, :period, :float
  end
end
