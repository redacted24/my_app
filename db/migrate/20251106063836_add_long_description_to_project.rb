class AddLongDescriptionToProject < ActiveRecord::Migration[8.0]
  def change
    add_column :projects, :long_description, :text
  end
end
