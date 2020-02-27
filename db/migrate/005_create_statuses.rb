class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.integer :happiness
      t.integer :fullness
      t.integer :money
      t.integer :user_id
      t.integer :tamagotchi_id

      t.timestamps
    end
  end
end
