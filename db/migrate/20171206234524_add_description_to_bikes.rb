class AddDescriptionToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :description, :string
  end
end
