class HousesChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'snippets'
  end
end