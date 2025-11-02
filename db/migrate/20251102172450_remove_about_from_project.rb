class RemoveAboutFromProject < ActiveRecord::Migration[8.0]
  def change
    remove_column :projects, :about, :string
    remove_column :projects, :github_string, :string
    remove_column :projects, :personal_comment, :string
  end
end
