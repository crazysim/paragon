require 'paragon/plugin'

module Paragon
  class Logging < Plugin
    on :channel do
      msg channel, %[#{nick} said "#{message}"!]
    end
  end
end
