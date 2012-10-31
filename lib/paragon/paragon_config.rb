require 'hashie/mash'
require 'yaml'

module Paragon
  module ParagonConfig
    def paragon_config
      @paragon_config ||= Hashie::Mash.new(YAML.load_file 'config/config.yml')
    end
  end
end
