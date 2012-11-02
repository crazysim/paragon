require 'isaac/bot'
require 'paragon/config'

module Paragon
  class ChatBot < Isaac::Bot
    include Paragon::Config

    def initialize
      save_context
      super
      configure do |c|
        c.nick   = paragon_config.nick   || 'paragon'
        c.server = paragon_config.server || 'localhost'
        c.port   = paragon_config.port   || 6667
      end

      on :connect do
        join *paragon_config.rooms
      end

      load_plugins
    end

    def self.context
      @@context
    end

    private

    def load_plugins
      Dir['./plugins/*.rb'].each { |plugin| require plugin }
    end

    def save_context
      @@context = self
    end
  end
end
