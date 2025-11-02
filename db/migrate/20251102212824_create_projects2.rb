class CreateProjects2 < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url_string
      t.json :tags
      t.string :github_link
      t.string :devpost_link
      t.string :website_link
      t.string :custom_link
      t.string :comments
      t.boolean :active
      t.boolean :unreleased
      t.string :description
      t.boolean :featured
      t.string :date
      t.timestamps
    end
  end
end
