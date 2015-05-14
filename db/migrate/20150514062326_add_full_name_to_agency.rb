class AddFullNameToAgency < ActiveRecord::Migration
  def change
    add_column :agencies, :full_name, :text
  end
end
