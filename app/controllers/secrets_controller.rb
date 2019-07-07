class SecretsController < ApplicationController
    before_action :require_login

    def show
      # if !params[:name] || params[:name].empty?
      #   redirect_to '/login'
      # else
      #   session[:name] = params[:name]
      #   redirect_to '/'
      # end
    end
     
    def index
    end
     
    def create
      
    end
     
    private

    def require_login
      # return head(:forbidden) unless current_user
      # redirect_to '/'
      redirect_to controller: 'sessions', action: 'new' unless session.include? :name
    end
    
end
