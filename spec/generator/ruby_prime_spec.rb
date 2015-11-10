require 'spec_helper'

RSpec.describe PrimalInstinct::Generator::RubyPrime do
  subject { described_class.new(length) }

  include_examples 'generates one prime number'
  include_examples 'generates 11 prime numbers'
end
