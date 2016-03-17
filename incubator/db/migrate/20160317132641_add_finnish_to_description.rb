class AddFinnishToDescription < ActiveRecord::Migration
  def change
    add_column :descriptions, :finnish, :string
  end
end
