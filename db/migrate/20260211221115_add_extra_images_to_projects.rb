class AddExtraImagesToProjects < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :extra_projects, :string
  end
end
