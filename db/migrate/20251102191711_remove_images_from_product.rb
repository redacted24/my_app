class RemoveImagesFromProduct < ActiveRecord::Migration[8.0]
  def change
    remove_column :projects, :images, :json
  end
end
