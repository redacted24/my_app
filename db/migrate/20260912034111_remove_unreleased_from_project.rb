class RemoveUnreleasedFromProject < ActiveRecord::Migration[8.0]
  def change
    remove_column :projects, :unreleased, :boolean
  end
end
