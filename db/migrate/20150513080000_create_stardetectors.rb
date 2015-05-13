class CreateStardetectors < ActiveRecord::Migration
  def change
    create_table :stardetectors do |t|
      t.string :manufacturer
      t.float :accuracy
      t.float :frequency
      t.float :cost

      t.timestamps null: false
    end
  end
end
