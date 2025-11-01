class AddColsToProject < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :url_string, :string
    add_column :projects, :about, :string
    add_column :projects, :personal_comment, :string
    add_column :projects, :github_string, :string
  end
end
