class UsersController < ApplicationController
  before_action :is_authenticated

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


end
