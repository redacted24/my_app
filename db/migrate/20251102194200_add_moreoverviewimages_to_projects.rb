class AddMoreoverviewimagesToProjects < ActiveRecord::Migration[8.0]
  def change
   add_column :projects, :more_overview_images, :attachments
  end
end
