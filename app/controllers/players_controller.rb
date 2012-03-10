class PlayersController < ApplicationController
  before_filter :signed_in_player, only: [:index, :edit, :update]
  before_filter :correct_player,   only: [:edit, :update]
  before_filter :admin_user,       only: :destroy

  def index 
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
    @title = "Sign Up"
  end

  def create
    @player = Player.new(params[:player])
    if @player.save
      sign_in @player
      redirect_to main_path 
    else
      @title = "Sign Up"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @player.update_attributes(params[:player])
      sign_in @player
      redirect_to @player
    else
      render 'edit'
    end
  end

  def destroy
    Player.find(params[:id]).destroy
    redirect_to players_path
  end

  private

  def signed_in_player
    redirect_to signin_path, notice: "Please sign in." unless signed_in?
  end

  def correct_player
    @player = Player.find(params[:id])
    redirect_to(root_path) unless current_player?(@player)
  end
end
