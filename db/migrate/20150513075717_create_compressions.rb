class CreateCompressions < ActiveRecord::Migration
  def change
    create_table :compressions do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
