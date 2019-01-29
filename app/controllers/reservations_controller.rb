class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :update, :destroy]

  # GET /reservations
  def index
    @reservations = Reservation.all
    render json: @reservations
  end

  # POST /reservations
  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.create_reservations(reservation_params)
    render json: @reservation, status: :created
  end

  # PUT /reservations/:id
  def update
    @reservation.create_reservations(reservation_params)
    render json: @reservation, status: :ok
  end

  private

  def reservation_params
    params.permit(:reservation_time, :guest_count, :table_name, :reservation_shift, :guest_email)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end
