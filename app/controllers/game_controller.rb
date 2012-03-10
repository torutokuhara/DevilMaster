class GameController < ApplicationController
  def start
  end

  def main
    @player = Player.find(current_player)
  end
end
