class AddMentorToCompression < ActiveRecord::Migration
  def change
    add_reference :compressions, :mentor, index: true
    add_foreign_key :compressions, :mentors
  end
end
