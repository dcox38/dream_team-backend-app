class ChangeGameVariableNames < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :player_1_user_id, :user_one_war
    rename_column :games, :player_2_user_id, :user_two_war
  end
end
