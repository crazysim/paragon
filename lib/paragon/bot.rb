require 'isaac/bot'
require 'paragon/paragon_config'

module Paragon
  class Bot < Isaac::Bot
    include ParagonConfig

    def initialize
      super()
      configure do |c|
        c.nick   = paragon_config.nick   || 'paragon'
        c.server = paragon_config.server || 'localhost'
        c.port   = paragon_config.port   || 6667
      end

      on :connect do
        join *paragon_config.rooms
      end

      on :channel do
        save_message
      end
    end

    def save_message
      msg channel, %[#{nick} said #{message}"]
    end
  end
end
