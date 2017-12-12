class DessertsController < ApplicationController
  def index
    @desserts = User.all
  end

  def show
    @dessert = User.find(params[:id])
  end

  def new
    @dessert = User.new
  end

  def create
    @dessert = User.new(user_params)
    if @dessert.save
      redirect_to user_path(@dessert)
    else
      render :new
  end

  def edit
    @dessert = User.find(params [:id])
  end

  def update
    @dessert = User.find(params [:id])
    if @dessert.update(user_params)
      redirect_to user_path(@dessert)
    else
      redirect_to edit_user_path(@dessert)
    end
  end

  def destroy
    @dessert = User.find_by(params[:id])
    @dessert.delete
    redirect_ users_path
  end


  private
    def user_params
      params.require(:user).permit(:name, :flavor)
    end
  end

end
