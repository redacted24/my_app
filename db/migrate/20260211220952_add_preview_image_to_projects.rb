class AddPreviewImageToProjects < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :preview_image, :string
  end
end
