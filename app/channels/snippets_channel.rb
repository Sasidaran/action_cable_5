class SnippetsChannel < ApplicationCable::Channel
  # Called when the consumer has successfully
  # become a subscriber of this channel.
  def subscribed
    stream_from 'snippets'
  end

  def receive(data)
    ActionCable.server.broadcast("snippets", data)
  end
end