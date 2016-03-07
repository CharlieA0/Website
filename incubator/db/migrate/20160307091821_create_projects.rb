class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :body
      t.datetime :started_at
      t.datetime :finished_at
      t.float :cost

      t.timestamps null: false
    end
  end
end
