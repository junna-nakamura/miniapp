class ChecksController < ApplicationController
  def create
    @check = Check.create(wish_id: params[:wish_id])
    redirect_to ("/wishes/")
  end

  def destroy
    @check = Check.find_by(wish_id: params[:wish_id])
    @check.destroy
    redirect_to ("/wishes/")
  end


end
