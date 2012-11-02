require 'sinatra/base'
require 'paragon/config'

module Paragon
  class WebServer < Sinatra::Base
    include Paragon::Config

    get '/' do
      'HI!'
    end
  end
end
