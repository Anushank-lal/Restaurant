class ReservationSerializer < ActiveModel::Serializer
  attributes :reservation_time, :guest_count
end
