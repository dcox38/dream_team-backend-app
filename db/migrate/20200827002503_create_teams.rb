class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :pitcher_id
      t.integer :catcher_id
      t.integer :first_base_id
      t.integer :second_base_id
      t.integer :third_base_id
      t.integer :shortstop_id
      t.integer :left_field_id
      t.integer :center_field_id
      t.integer :right_field_id
      t.integer :user_id
      t.integer :total_war

      t.timestamps
    end
  end
end
