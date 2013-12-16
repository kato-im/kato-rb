require 'httparty'
require 'json'

require "kato/version"

module Kato
  class Room
    include HTTParty

    def initialize(room_id)
      @room_id = room_id
      self.class.base_uri 'https://api.kato.im/rooms/' + @room_id
    end

    def post(from, message, options = {})
      body = {
        :from => from,
        :text => message
      }.merge options
      response = self.class.post('/simple',
        :headers => { 'Content-Type' => 'application/json' },
        :body => body.to_json )
      case response.code
      when 200,204
        true
      else
        raise "#{response.message} (#{response.code})"
      end
    end
  end
end
