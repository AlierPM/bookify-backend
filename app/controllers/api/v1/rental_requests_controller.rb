class Api::V1::RentalRequestsController < ApplicationController
  before_action :set_api_v1_rental_request, only: %i[ show update destroy ]

  # GET /api/v1/rental_requests
  def index
    @api_v1_rental_requests = Api::V1::RentalRequest.all

    render json: @api_v1_rental_requests
  end

  # GET /api/v1/rental_requests/1
  def show
    render json: @api_v1_rental_request
  end

  # POST /api/v1/rental_requests
  def create
    @api_v1_rental_request = Api::V1::RentalRequest.new(api_v1_rental_request_params)

    if @api_v1_rental_request.save
      render json: @api_v1_rental_request, status: :created, location: @api_v1_rental_request
    else
      render json: @api_v1_rental_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/rental_requests/1
  def update
    if @api_v1_rental_request.update(api_v1_rental_request_params)
      render json: @api_v1_rental_request
    else
      render json: @api_v1_rental_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/rental_requests/1
  def destroy
    @api_v1_rental_request.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_rental_request
      @api_v1_rental_request = Api::V1::RentalRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_rental_request_params
      params.require(:api_v1_rental_request).permit(:user_id, :book_id, :start_date, :end_date, :status)
    end
end
