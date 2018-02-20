class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.integer :user_id
      t.string :lat
      t.string :lon
      t.date :day
      t.time :hour

      t.timestamps
    end

    add_index :positions, :user_id
    add_foreign_key :positions, :users
  end
end
