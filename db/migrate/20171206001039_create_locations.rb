class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :region
      t.string :zip_code
      t.string :country
      t.text :description
      t.integer :member_id

      t.timestamps null: false
    end
  end
end
