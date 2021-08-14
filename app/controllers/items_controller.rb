class ItemsController < ApplicationController
  before_action :current_user, only: [:create_user_item]

  # GET /stores/:id/items
  def index_by_store_id
    @store = Store.find(params[:id])
    @items = @store.items
  end

  # POST /items/:id/users
  def create_user_item
    @user_item = UserItem.create({user_id: @current_user.id, item_id: params[:id]})
    render json: @user_item.item
  end
end
