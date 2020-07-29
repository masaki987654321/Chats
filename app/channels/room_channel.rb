class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def create
    ActionCable.server.broadcast 'room', room_name: 'コンソールで実行する'
  end
end
