class SessionsController < ApplicationController
  include SessionsHelper

  def login
  end

  def create
    @user = User.find_by(email: session_params[:email])

    if @user 
      if @user.authenticate(session_params[:password])
        login_user
        redirect_to index_index_path
      else
        @errors = ['email or password is incorrect']
        render 'login'
      end
    else 
      @errors = ['Please register to access this site.']
      render 'login'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to '/'
  end
  
  private 
    def session_params
      params.require(:session).permit(:email, :password)
    end
end