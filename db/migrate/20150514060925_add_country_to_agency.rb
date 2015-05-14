class AddCountryToAgency < ActiveRecord::Migration
  def change
    add_reference :agencies, :country, index: true
    add_foreign_key :agencies, :countries
  end
end
