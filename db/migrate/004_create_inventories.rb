class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories do |t|
      t.integer :status_id
      t.integer :item_id
      t.integer :quantity, :default => 1

      t.timestamps
    end
  end
end
