class WelcomeController < ApplicationController

  def hello
    if !session[:user_id]
      redirect_to login_path
    else
      @user = User.find_by_id(session[:user_id])
    end
  end
end
