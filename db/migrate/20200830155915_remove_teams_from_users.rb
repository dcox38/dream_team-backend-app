class RemoveTeamsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :teams, :integer 
  end
end
