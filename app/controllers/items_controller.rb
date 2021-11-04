class ItemsController < ApplicationController

  def index
    if params[:user_id]
      user = User.find_by(id: params[:id])
      if user
        items = user.items
        
      else
        render json: { error: "user not found"}, status: :not_found
      end
    else
        items = Item.all
    end
      render json: items, include: :users
  end

end
