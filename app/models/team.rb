class Team < ApplicationRecord
  # belongs_to :game
  belongs_to :user
  # has_many :players


  def pitcher
    Player.find_by(id: pitcher_id) 
  end
  def catcher
    Player.find_by(id: catcher_id) 
  end
  def first_base
    Player.find_by(id: first_base_id) 
  end
  def second_base
    Player.find_by(id: second_base_id) 
  end
  def third_base
    Player.find_by(id: third_base_id) 
  end
  def shortstop
    Player.find_by(id: shortstop_id) 
  end
  def left_field
    Player.find_by(id: left_field_id) 
  end
  def center_field
    Player.find_by(id: center_field_id) 
  end
  def right_field
    Player.find_by(id: right_field_id) 
  end
end
