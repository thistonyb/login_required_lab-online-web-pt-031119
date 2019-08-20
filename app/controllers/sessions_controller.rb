class SessionsController < ApplicationController

  def new

  end

  def home

  end

  def create
    if is_nil_or_empty
      redirect_to '/new'
    else
      current_user = params[:name]
      redirect_to '/home'
  end

  def destroy
    current_user = nil
    redirect_to '/new'
  end

  private
  def is_nil_or_empty
    if params[:name].nil? || params[:name].empty?
  end
end
