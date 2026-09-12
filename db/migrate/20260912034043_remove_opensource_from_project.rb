class RemoveOpensourceFromProject < ActiveRecord::Migration[8.0]
  def change
    remove_column :projects, :opensource, :boolean
  end
end
