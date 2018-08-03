require 'pry'
class SessionsController < ApplicationController

  def new
    binding.pry
  end

  def create
    binding.pry
    session[:name] = params[:name] if params[:name].present?
    redirect_to '/'
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
