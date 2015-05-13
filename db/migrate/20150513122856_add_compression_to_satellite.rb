class AddCompressionToSatellite < ActiveRecord::Migration
  def change
    add_reference :satellites, :compression, index: true
    add_foreign_key :satellites, :compressions
  end
end
