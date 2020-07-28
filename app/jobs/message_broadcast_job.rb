class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
    # room_channelにメッセージをブロードキャストする
    ActionCable.server.broadcast 'talkroom_channel', message: render_message(message)
  end

  private
    def render_message(message)
      ApplicationController.renderer.render(partial: 'talkrooms/message', locals: { message: message })
    end
end
