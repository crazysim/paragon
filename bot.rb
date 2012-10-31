$: << 'lib'

require 'eventmachine'
require 'paragon/bot'

EventMachine.run { Paragon::Bot.new.start }
