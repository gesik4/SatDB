class CreateOrbits < ActiveRecord::Migration
  def change
    create_table :orbits do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
