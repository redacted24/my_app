class CreatePhotographies < ActiveRecord::Migration[8.0]
  def change
    create_table :photographies do |t|
      t.string :title

      t.timestamps
    end
  end
end
