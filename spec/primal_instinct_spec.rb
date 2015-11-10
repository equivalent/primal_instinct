require 'spec_helper'

describe PrimalInstinct do
  describe '.generators' do
    it do
      expect(described_class.generators).to match_array([
        PrimalInstinct::Generator::LucasLehmer,
        PrimalInstinct::Generator::RubyPrime
      ])
    end
  end

  describe '.generate' do
    let(:generator) { double 'generator' }
    let(:count) { 3 }
    let(:primes) { double 'primes' }
    let(:generator_instance) { double call: primes }

    it 'to initialize generator and generate table' do
      expect(generator)
        .to receive(:new)
        .with(count)
        .and_return(generator_instance)

      expect(PrimalInstinct::Multificator)
        .to receive(:multification_table)
        .with(primes)

      described_class.generate(generator: generator,
                               count: count)
    end
  end

  it 'has a version number' do
    expect(PrimalInstinct::VERSION).not_to be nil
  end
end
