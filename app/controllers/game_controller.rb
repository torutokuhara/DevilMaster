class GameController < ApplicationController
  before_filter :set_state

  def set_state
    @player = current_player
  end

  def start
  end

  def main
    if @player.level.nil?
      @player.update_attributes(level: 1)
      @player_card = PlayerCard.new
      @player_card.update_attributes(player_id: @player.id, card_id: 1)
      @player_card = PlayerCard.new
      @player_card.update_attributes(player_id: @player.id, card_id: 2)
      @player_card = PlayerCard.new
      @player_card.update_attributes(player_id: @player.id, card_id: 3)
      @player_card = PlayerCard.new
      @player_card.update_attributes(player_id: @player.id, card_id: 4)
      #redirect_to level_up_path level: 1 
    end
  end

  def level_up
  end

  def card_get
  end
end
