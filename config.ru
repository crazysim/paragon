$: << 'lib'

require 'eventmachine'
require 'paragon/chat_bot'
require 'paragon/web_server'

# Sinatra will set up its own traps. I want to override that, so I have to do
# it after Sinatra starts.
#
# (Thank you, http://www.ruby-forum.com/topic/4403906#1068965)
#
def patch_signal_handlers
  sleep 0.25 until Paragon::WebServer.running?
  %w[INT TERM].each {|s| Signal.trap(s) { exit } }
end

[
  Thread.new { Paragon::WebServer.run! },
  Thread.new { Paragon::ChatBot.new.start },
  Thread.new { patch_signal_handlers }
].each {|t| t.join}
