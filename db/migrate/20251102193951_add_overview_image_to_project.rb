class AddOverviewImageToProject < ActiveRecord::Migration[8.0]
  def change
   add_column :projects, :overview_image, :string
  end
end
