class RemoveActiveFromProject < ActiveRecord::Migration[8.0]
  def change
    remove_column :projects, :active, :boolean
  end
end
