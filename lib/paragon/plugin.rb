require 'paragon/chat_bot'
require 'paragon/config'

module Paragon
  class Plugin
    include Paragon::Config

    def self.descendants
      ObjectSpace.each_object(Class).select { |klass| klass < self }
    end

    def self.method_missing(method, *args, &blk)
      Paragon::ChatBot.context.instance_eval { send(method, *args, &blk) }
    end
  end
end
