class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.integer :happiness, :default => 25
      t.integer :fullness, :default => 25
      t.integer :money, :default => 50
      t.integer :user_id
      t.integer :tamagotchi_id

      t.timestamps
    end
  end
end
