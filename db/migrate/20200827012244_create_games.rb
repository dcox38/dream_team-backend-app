class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :player_1_user_id
      t.integer :player_2_user_id
      t.integer :winner_user_id

      t.timestamps
    end
  end
end
