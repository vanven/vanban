class KanbansController < ApplicationController
  before_action :is_authenticated

  def index
    @kanbans = Kanban.all
  end

  def show
    @kanban = @user.kanban.find(params[:id])
  end



  private

  def load_user
    @user = User.find(params[:user_id])
  end

end