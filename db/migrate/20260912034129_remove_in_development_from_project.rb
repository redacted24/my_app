class RemoveInDevelopmentFromProject < ActiveRecord::Migration[8.0]
  def change
    remove_column :projects, :in_development, :boolean
  end
end
