class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.column :title, :string
      t.column :description, :text
      t.column :url, :string

      t.timestamps
    end
  end
end
