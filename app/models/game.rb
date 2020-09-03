class Game < ApplicationRecord
  has_many :teams

  def user_one
    Team.find_by(id: current_user.team.user_id)
  end
end
