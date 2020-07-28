class TalkroomChannel < ApplicationCable::Channel
  def subscribed
    logger.debug("subscribeddddddddd")
    stream_from "talkroom_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    logger.debug("loggerrrrrrr speak")
    ActionCable.server.broadcast 'talkroom_channel', message: data['message']

  end
end
