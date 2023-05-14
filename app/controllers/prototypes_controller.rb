class PrototypesController < ApplicationController
  def index
    @user = current_user
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new 
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end


private
  def user_params
    params.require(:user).permit(:name)
  end

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end
