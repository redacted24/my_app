class AddDateToProjects < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :date, :string
  end
end
