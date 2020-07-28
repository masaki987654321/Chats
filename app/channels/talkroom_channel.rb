class TalkroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "talkroom_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast 'talkroom_channel', message: data['message']

  end
end
