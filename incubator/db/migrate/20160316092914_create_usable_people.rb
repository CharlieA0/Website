class CreateUsablePeople < ActiveRecord::Migration
  def change
    create_table :usable_people do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :intrested
      t.string :skills

      t.timestamps null: false
    end
  end
end
