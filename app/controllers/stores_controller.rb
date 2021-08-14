class StoresController < ApplicationController

  def create
    @store = Store.create(store_params)
    
    render json: {store: @store, items: @store.items}
  end

  def show
    @store = Store.find(params[:id])
  end

  def index
    @stores = Store.all
    render json: {stores: @stores}
  end

  private

  def store_params
    store_params = params.require(:store).permit(:name, :description, items: [:id, :name, :height, :width, :weight, :position_x, :position_y, :score])
    store_params[:items_attributes] = store_params.delete :items
    store_params.permit!
  end
end



