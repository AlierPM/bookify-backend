class Api::V1::FavoritesController < ApplicationController
  before_action :set_favorite, only: %i[create show update destroy]
  before_action :authenticate_user!

  # GET /api/v1/favorites
  def index
    @favorites = Favorite.all
    render json: { message: 'Favorites fetched successfully', data: @favorites }
  end

  # GET /api/v1/favorites/1
  def show
    render json: { message: 'Favorite fetched successfully', data: @favorite }
  end

  # POST /api/v1/favorites
  def create
    @favorite = Favorite.new(favorite_params)

    if @favorite.save
      render json: { message: 'Favorite created successfully', data: @favorite }, status: :created,
             location: api_v1_user_favorite_url(@favorite.user, @favorite)
    else
      render json: { message: 'Failed to create favorite', errors: @favorite.errors }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/favorites/1
  def update
    if @favorite.update(favorite_params)
      render json: { message: 'Favorite updated successfully', data: @favorite }
    else
      render json: { message: 'Failed to update favorite', errors: @favorite.errors }, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/favorites/1
  def destroy
    @favorite.destroy!
    render json: { message: 'Favorite deleted successfully' }, status: :ok
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_favorite
    @favorite = Favorite.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { message: 'Favorite not found' }, status: :not_found
  end

  # Only allow a list of trusted parameters through.
  def favorite_params
    params.require(:favorite).permit(:user_id, :book_id)
  end
end
