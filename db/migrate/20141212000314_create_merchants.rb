class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :name
      t.integer :discount
      t.references :address, index: true

      t.timestamps
    end
  end
end
