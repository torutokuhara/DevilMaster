module SessionsHelper
  def sign_in(player)
    cookies.permanent[:remember_token] = player.remember_token
    current_player = player
  end

  def signed_in?
    !current_player.nil?
  end

  def current_player=(player)
    @current_player = player
  end

  def current_player
    @current_player ||= player_from_remember_token
  end

  def current_player?(player)
    player == current_player
  end

  def sign_out
    cookies.delete(:remember_token)
  end

  private

  def player_from_remember_token
    remember_token = cookies[:remember_token]
    Player.find_by_remember_token(remember_token) unless remember_token.nil?
  end
end
