class RoomBroadcastJob < ApplicationJob
  queue_as :default

  def perform(room)
    ActionCable.server.broadcast 'room', room_name: room_name(room)
  end

  private
    def room_name(room)
      logger.debug(room.name + 'dddjfklajfdsakljfkdlsajflkdsajflk')
      room.name
    end
end
