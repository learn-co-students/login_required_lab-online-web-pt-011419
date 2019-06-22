class SessionsController < ApplicationController

  def index
  end

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/'
    else
      session[:name] = params[:name]
      redirect_to '/sessions'
    end
  end

  def destroy
    if !current_user.nil?
      session.delete :name
    else
      redirect_to '/'
    end
  end
end
