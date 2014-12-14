class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :rating
      t.references :address, index: true
      t.references :merchant, index: true

      t.timestamps
    end
  end
end
