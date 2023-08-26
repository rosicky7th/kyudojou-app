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
    params.require(:dojo).permit(:name, :address, :contact, :introduction, :photo, :rules)
  end
end
