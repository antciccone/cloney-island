class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.text :name
      t.text :description
      t.integer :goal

      t.timestamps
    end
  end
end
