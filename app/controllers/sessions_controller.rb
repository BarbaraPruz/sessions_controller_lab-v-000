require 'pry'
class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
    end
    redirect_to '/'
    # if !params[:name].present?
    #   render :new
    # else
    #   session[:name] = params[:name]
    #   redirect_to '/'
    # end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
