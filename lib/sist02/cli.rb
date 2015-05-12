require "sist02/cli/version"
require "sist02/cli/cinii"
require 'thor'

module Sist02
  module Cli
    def self.run
      File.expand_path("../../bin/sist02", __FILE__)
    end
    # Your code goes here...
  end
end
