require 'hashie/mash'
require 'yaml'

module Paragon
  module Config
    def paragon_config
      @@app_config ||= Hashie::Mash.new(YAML.load_file 'config/config.yml')
    end
  end
end
