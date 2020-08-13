class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :war
      t.integer :position1
      t.integer :position2
      t.integer :position3
      t.integer :position4

      t.timestamps
    end
  end
end
