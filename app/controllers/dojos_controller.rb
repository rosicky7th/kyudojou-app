class DojosController < ApplicationController
  def new
    @dojo = Dojo.new
  end
  
  def create
    @dojo = Dojo.new(dojo_params)
    if @dojo.save
      redirect_to @dojo
    else
      render 'new'
    end
  end
  
  private
  
  def dojo_params
    params.require(:dojo).permit(:name, :prefecture, :municipalities, :address, :phone_number, :introduction, :rule, :image).merge(user_id: current_user.id)
  end
end
