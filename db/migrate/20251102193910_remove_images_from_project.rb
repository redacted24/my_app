class RemoveImagesFromProject < ActiveRecord::Migration[8.0]
  def change
    remove_column :projects, :images, :attachments
  end
end
