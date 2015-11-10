module PrimalInstinct
  module Generator
    class LucasLehmer
      attr_reader :length

      def initialize(length)
        @length = length
      end

      def call
        ary = []
        number = 1
        until ary.length == length
          number += 1
          ary << number if is_prime(number)
        end
        ary
      end

      private
      def is_prime(number)
        return true  if number == 2
        return false if number.even?
        (3..Math.sqrt(number)).step(2) do |i|
          return false  if number % i == 0
        end
        true
      end
    end
  end
end
