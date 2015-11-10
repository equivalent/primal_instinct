require 'spec_helper'

RSpec.describe PrimalInstinct::Generator::LucasLehmer do
  subject { described_class.new(length) }

  include_examples 'generates one prime number'
  include_examples 'generates 11 prime numbers'
end
