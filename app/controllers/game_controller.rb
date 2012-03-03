class GameController < ApplicationController
  def start
  end

  def main
    @player = Player.find(1)
  end
end
