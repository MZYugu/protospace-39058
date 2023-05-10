class PrototypesController < ApplicationController
  def index
    @user = current_user
  end

  def user_paras
    params.require(:user).permit(:name)
  end
end
