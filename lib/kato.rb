require 'httparty'
require 'json'

require "kato/version"

module Kato
  class Room
    include HTTParty

    def initialize(room_id, options = {})
      default_options = {
        :api_url => 'https://api.kato.im',
        :integration => 'simple'
      }
      options = default_options.merge options
      url = options[:api_url] + '/rooms/' + room_id + '/' + options[:integration]
      url = options[:full_url] if options[:full_url]
      self.class.base_uri url
    end

    def post(from, message, options = {})
      body = {
        :from => from,
        :text => message
      }.merge options
      response = self.class.post('',
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
