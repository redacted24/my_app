class RemoveMoreOverviewImagesFromProjects < ActiveRecord::Migration[8.0]
  def change
    remove_column :projects, :more_overview_images, :string
  end
end
