class RemoveExtraProjectsFromProjects < ActiveRecord::Migration[8.0]
  def change
    remove_column :projects, :extra_projects, :string
  end
end
