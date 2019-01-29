class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :update, :destroy]

  # GET /reservations
  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  # POST /reservations
  def create
    @reservation = Reservation.create!(reservation_params)
    json_response(@reservation, :created)
  end

  # PUT /reservations/:id
  def update
    @reservation.update(reservation_params)
    head :no_content
  end

  private

  def reservation_params
    params.permit(:reservation_time)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
