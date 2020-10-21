class AddLikesToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :likes, :integer
  end
end
