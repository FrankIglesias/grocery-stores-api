class GroceryStoresController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found
  def index
    respond_with GroceryStore.all
  end

  def show
    @store = GroceryStore.find(params[:id])
    respond_with @store
  end


  def handle_record_not_found
    render json: {message: 'Not found' }, status: 404
  end
end
