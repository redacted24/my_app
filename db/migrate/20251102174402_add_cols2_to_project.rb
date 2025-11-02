class AddCols2ToProject < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :descrption, :string
    add_column :projects, :tags, :json
    add_column :projects, :images, :json
    add_column :projects, :github_link, :string
    add_column :projects, :devpost_link, :string
    add_column :projects, :website_link, :string
    add_column :projects, :custom_link, :string
    add_column :projects, :comments, :string
    add_column :projects, :active, :boolean
    add_column :projects, :unreleased, :boolean
  end
end
