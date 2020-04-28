class GroceryStoresController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found

  def index
    render json: GroceryStore.all
  end

  def show
    @store = GroceryStore.find(params[:id])
    render json: @store, include: [:products]
  end

  def handle_record_not_found
    render json: {message: 'Not found' }, status: 404
  end
end
