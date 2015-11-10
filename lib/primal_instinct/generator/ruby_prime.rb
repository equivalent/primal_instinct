require 'prime'
module PrimalInstinct
  module Generator
    class RubyPrime
      attr_reader :length

      def initialize(length)
        @length = length
      end

      def call
        Prime.first(length)
      end
    end
  end
end
