class TopsController < ApplicationController
  def main
    render 'login'
  end
  
  def login
    user = User.find_by(uid:params[:uid])
    if user
        if BCrypt::Password.new(user.pass) == params[:pass]
          session[:login_uid] = params[:uid]
          redirect_to root_path
        else
          render 'error'
        end
    else
      render 'error'
    end
  end
    
  def logout
      session.delete(:login_uid)
      redirect_to root_path
  end
    
end
