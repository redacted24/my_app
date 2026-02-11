class RemoveOverviewImageFromProjects < ActiveRecord::Migration[8.0]
  def change
    remove_column :projects, :overview_image, :string
  end
end
