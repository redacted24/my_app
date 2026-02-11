class AddExtraImagesShowcaseToProjects < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :extra_images, :string
  end
end
