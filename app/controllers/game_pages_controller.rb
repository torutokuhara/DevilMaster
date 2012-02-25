class GamePagesController < ApplicationController
  def main
  end

  def battle_select
  end

  def battle_select_bylevel
    @players = Player.all
  end

  def battle
  end

  def battle_result
  end
end
