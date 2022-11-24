class SessionsController < ApplicationController
  def new
  end

  def create
      user = User.find_by(username: user_params[:username]).try(:authenticate, user_params[:password])
      if user
        render plain: sprintf("welcome, %s!", user.username)
      else
        redirect_to :sessions_new
      end
   end
   
   private
    def user_params
     params.require(:session).permit(:username, :password)
    end
end

