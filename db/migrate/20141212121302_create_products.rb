class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :maker
      t.string :color
      t.integer :prise

      t.timestamps
    end
  end
end
