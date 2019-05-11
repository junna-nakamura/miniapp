class WishesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @wishes = Wish.all
  end

  def new
    @wish = Wish.new
  end

  def create
    Wish.create(text: wish_params[:text], user_id: current_user.id)
  end

  def destroy
    wish = Wish.find(params[:id])
    wish.destroy if wish.user_id == current_user.id
  end

  def edit
    @wish = Wish.find(params[:id])
  end

  def update
    wish = Wish.find(params[:id])
    if wish.user_id == current_user.id
      wish.update(wish_params)
    end
  end

  private
  def wish_params
    params.require(:wish).permit(:name, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end





