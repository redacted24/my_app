class RemoveDescrptionFromProduct < ActiveRecord::Migration[8.0]
  def change
    remove_column :projects, :descrption, :string
    add_column :projects, :description, :string
  end
end
