class AddOpenSourceToProjects < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :opensource, :boolean
  end
end
