class RoomChannel < ApplicationCable::Channel
  stream_for room
  def room
    Room.find(params[:room_id])
  end

  # def subscribed
  #   stream_from "room_channel"
  # end
  #
  # def unsubscribed
  #   # Any cleanup needed when channel is unsubscribed
  # end
end
