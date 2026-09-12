class RemoveCommentsFromProject < ActiveRecord::Migration[8.0]
  def change
    remove_column :projects, :comments, :string
  end
end
