class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :maker
      t.string :color
      t.string :price

      t.timestamps
    end
  end
end
