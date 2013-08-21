class KanbansController < ApplicationController
  # before_action :is_authenticated
  before_action :get_user

  def index
    if @user
      @kanbans = @user.kanbans
    end
  end

  def show
    if @user
      @kanban = @user.kanbans.find(params[:id])
    end
  end

  def new
    if @user
      @kanban = @user.kanbans.new
    end
  end

  def create
    if @user
      @kanban = @user.kanban.create!(kanban_params)
    end
  end

  private

  def get_user
    @user = User.find(params[:user_id])
  end

  def kanban_params
    params.require(:kanban).permit(:board_name)
  end
end