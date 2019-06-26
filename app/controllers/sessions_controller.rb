class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    session[:name] = params[:name]
    if !session[:name] || session[:name].empty?
      redirect_to '/sessions/new'
      end
  end 
  
  def destroy
    if !current_user
    session[:name] = nil
  else 
    session.delete :name
  end
  end
  
end
