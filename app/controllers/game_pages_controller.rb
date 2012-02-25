class GamePagesController < ApplicationController
  def start
  end

  def main
    @player = Player.find(1)
  end

  def battle_select
    @player = Player.find(params[:player])
  end

  def battle_select_bylevel
    @player = Player.find(params[:player])
    @players = Player.all
  end

  def battle_select_card
    @player = Player.find(params[:player])
    @cards = Card.all
  end 

  def battle
    @player = Player.find(params[:player])
    @card_player = Card.find(params[:card_player]) 
    @card_opponent = Card.find(params[:card_opponent])
    if @card_player.strength > @card_opponent.strength 
      @result = "win"
    else
      @result = "lose"
    end
  end

  def battle_result
    @player = Player.find(params[:player])
    @card_player = Card.find(params[:card_player])
    @card_opponent = Card.find(params[:card_opponent])
    @result = params[:result]
  end
end
