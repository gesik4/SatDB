class CreateSatellitesAndCountries < ActiveRecord::Migration
  def change
    add_column :satellites, :country_name, :string
    add_column :countries, :country_number, :string

    create_table :satellites_countries, id: false do |t|
      t.belongs_to :satellite, index: true
      t.belongs_to :country, index: true
      end
    end
end