require "primal_instinct/version"
require "primal_instinct/generator/lucas_lehmer"
require "primal_instinct/generator/ruby_prime"
require "primal_instinct/multificator"

module PrimalInstinct
  def self.generators
    PrimalInstinct::Generator
      .constants
      .map{ |k|  self.const_get("PrimalInstinct::Generator::#{k}") }
  end

  def self.generate(generator:, count:)
    primes = generator.new(count).call
    PrimalInstinct::Multificator.multification_table(primes)
  end
end
