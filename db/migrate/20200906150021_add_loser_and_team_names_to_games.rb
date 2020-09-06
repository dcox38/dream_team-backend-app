class AddLoserAndTeamNamesToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :loser_user_id, :integer
    add_column :games, :winner_name, :string
    add_column :games, :loser_name, :string
  end
end
