class GamePagesController < ApplicationController
  def start
  end

  def main
  end

  def battle_select
  end

  def battle_select_bylevel
    @players = Player.all
  end

  def battle_select_card
    @cards = Card.all
  end 

  def battle
  end

  def battle_result
  end
end
