require 'spec_helper'

require 'prime'
class RubyPrime
  attr_reader :length

  def initialize(length)
    @length = length
  end

  def call
    Prime.first(length)
  end
end

RSpec.describe RubyPrime do
  subject { described_class.new(length) }

  context 'when generating 1 number' do
    let(:length) { 1 }

    it do
      expect(subject.call).to match_array([2])
    end
  end

  context 'when generating 1 number' do
    let(:length) { 11 }

    it do
      expect(subject.call).to match_array([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31])
    end
  end
end
