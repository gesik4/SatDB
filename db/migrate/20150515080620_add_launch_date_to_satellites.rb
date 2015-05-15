class AddLaunchDateToSatellites < ActiveRecord::Migration
  def change
    add_column :satellites, :launch_date, :datetime
  end
end
