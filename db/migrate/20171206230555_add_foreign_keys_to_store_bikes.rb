class AddForeignKeysToStoreBikes < ActiveRecord::Migration
  def change
        change_table :store_bikes do |t|
        t.belongs_to :bike, index: true
        t.belongs_to :store, index: true
  
        t.timestamps null: true
      end
      add_foreign_key :store_bikes, :bikes
      add_foreign_key :store_bikes, :stores
  end
end
