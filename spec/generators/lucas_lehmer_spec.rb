require 'spec_helper'

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

RSpec.describe LucasLehmer do
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
