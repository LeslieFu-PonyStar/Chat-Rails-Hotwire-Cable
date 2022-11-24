class SessionsController < ApplicationController
  def new
  end

  def create
      @user = User.find_by(username: user_params[:username], password: user_params[:password])
      if @user
        redirect_to :sessions
      else
        redirect_to :sessions_new, alert: '用户名或密码错误'
      end
   end
   
   private
    def user_params
     params.require(:session).permit(:username, :password)
    end
end

