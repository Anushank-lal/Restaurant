class ReservationMailer < ApplicationMailer
   default from: "anushanklal@gmail.com"

  def reservation_confirmed(guest, reservation)
    @guest = guest
    @reservation = reservation
    mail(to: @guest.email, subject: 'Reservation Confirmed')
  end

  def table_reserved(reservation)
    @reservation = reservation
    @restaurant = reservation.restaurant
    mail(to: @restaurant.email, subject: 'New Reservation Created')
  end
end
