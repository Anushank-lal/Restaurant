class ReservationSerializer < ActiveModel::Serializer
  cache key: 'reservation'
  attributes :id, :reservation_time, :guest_count, :guest_name, :table_name
end
