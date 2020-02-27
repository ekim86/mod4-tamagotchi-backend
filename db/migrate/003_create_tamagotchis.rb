class CreateTamagotchis < ActiveRecord::Migration[6.0]
  def change
    create_table :tamagotchis do |t|
      t.string :name
      t.string :species
      t.integer :happiness
      t.integer :fullness
      t.integer :income

      t.timestamps
    end
  end
end
