class AddImagesToProject < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :images, :attachments
  end
end
