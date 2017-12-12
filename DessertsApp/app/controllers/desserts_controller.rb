class DessertsController < ApplicationController
  def index
    @desserts = Dessert.all
  end

  def show
    @dessert = Dessert.find(params[:id])
  end

  def new
    @dessert = Dessert.new
  end

  def create
    @dessert = Dessert.new(dessert_params)
    if @dessert.save
      redirect_to dessert_path(@dessert)
    else
      render :new
  end

  def edit
    @dessert = Dessert.find(params [:id])
  end

  def update
    @dessert = Dessert.find(params [:id])
    if @dessert.update(dessert_params)
      redirect_to dessert_path(@dessert)
    else
      redirect_to edit_dessert_path(@dessert)
    end
  end

  def destroy
    @dessert = Dessert.find_by(params[:id])
    @dessert.delete
    redirect_ desserts_path
  end


  private
    def Dessert_params
      params.require(:dessert).permit(:name, :flavor)
    end
  end

end
