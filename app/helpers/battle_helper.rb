module BattleHelper
  def current_opponent=(player)
    @current_opponent = player
  end

  def current_opponent
    @current_opponent
  end

  def current_player_card=(card)
    @player_card = card
  end

  def current_opponent_card=(card)
    @opponent_card = card
  end

  def result=(result)
    @result = result
  end
end
