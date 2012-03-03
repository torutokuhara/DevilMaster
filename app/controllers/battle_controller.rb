class BattleController < ApplicationController
  def select_opponent
    @player = Player.find(params[:player])
  end

  def select_opponent_bylevel
    @player = Player.find(params[:player])
    @players = Player.all
  end

  def select_card
    @player = Player.find(params[:player])
    @cards = Card.all
  end 

  def execute 
    @player = Player.find(params[:player])
    @card_player = Card.find(params[:card_player]) 
    @card_opponent = Card.find(params[:card_opponent])
    if @card_player.strength > @card_opponent.strength 
      @result = "win"
    else
      @result = "lose"
    end
  end

  def result
    @player = Player.find(params[:player])
    @card_player = Card.find(params[:card_player])
    @card_opponent = Card.find(params[:card_opponent])
    @result = params[:result]
  end
end
