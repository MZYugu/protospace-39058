class PrototypesController < ApplicationController
  def index
    @user = current_user
  end

  def new
  end

  def create
  end


private
  def user_params
    params.require(:user).permit(:name)
  end
end
