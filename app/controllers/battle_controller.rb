class BattleController < ApplicationController
  include BattleHelper
  before_filter :set_state

  def set_state
    @player = current_player
    unless session[:opponent_id].blank?
      @opponent = Player.find(session[:opponent_id])
    end
    unless session[:player_card_id].blank?
      @player_card = Card.find(session[:player_card_id])
    end
    unless session[:opponent_card_id].blank?
      @opponent_card = Card.find(session[:opponent_card_id])
    end
  end

  def select_opponent
    @player = current_player 
  end

  def select_opponent_bylevel
    @players = Player.all
  end

  def select_card
    session[:opponent_id] = params[:opponent_id]
    set_state
    @cards = @player.cards
  end 

  def execute 
    session[:player_card_id] = params[:card_id]
    session[:opponent_card_id] = 2 
    set_state
 end

  def result
    if @player_card.strength > @opponent_card.strength 
      @result = "win"
    else
      @result = "lose"
    end
  end
end
