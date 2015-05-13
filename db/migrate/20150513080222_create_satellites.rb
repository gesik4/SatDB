class CreateSatellites < ActiveRecord::Migration
  def change
    create_table :satellites do |t|
      t.string :acronym
      t.string :full_name
      t.integer :norad_id
      t.string :nssdc_id

      t.timestamps null: false
    end
  end
end
