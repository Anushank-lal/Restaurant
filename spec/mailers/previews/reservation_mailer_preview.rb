# Preview all emails at http://localhost:3000/rails/mailers/reservation_mailer
class ReservationMailerPreview < ActionMailer::Preview
  ReservationMailer.reservation_confirmed(User.first, Reservation.first)
  ReservationMailer.table_reserved(Reservation.first)
end
