class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :city
      t.string :street
      t.integer :buildNumber

      t.timestamps
    end
  end
end
