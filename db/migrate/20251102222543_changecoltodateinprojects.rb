class Changecoltodateinprojects < ActiveRecord::Migration[8.0]
  def change
   change_column :projects, :date, :date
  end
end
