class SessionsController < ApplicationController
  def new
  end
 
  def create
    player = Player.find_by_email(params[:session][:email])
    if player && player.authenticate(params[:session][:password])
      sign_in player
      redirect_to main_path 
    else
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to signin_path
  end
end
