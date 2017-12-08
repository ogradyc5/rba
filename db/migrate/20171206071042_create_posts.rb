class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :text
      t.references :member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
