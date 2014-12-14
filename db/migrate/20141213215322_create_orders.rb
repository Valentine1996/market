class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :orderdate
      t.integer :performance
      t.references :customer, index: true

      t.timestamps
    end
  end
end
