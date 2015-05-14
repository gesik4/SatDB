class RemoveNameFromAgency < ActiveRecord::Migration
  def change
    remove_column :agencies, :name, :string
  end
end
