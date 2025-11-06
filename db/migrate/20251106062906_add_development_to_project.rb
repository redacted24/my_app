class AddDevelopmentToProject < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :in_development, :boolean, default: '0'
  end
end
