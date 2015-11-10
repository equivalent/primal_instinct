require 'spec_helper'

RSpec.describe Multificator do
  describe '#multification_table' do
    subject { described_class.multification_table(values) }

    describe 'when passing empty arguments' do
      let(:values) { [] }

      it do
        expect(subject).to match_array([])
      end
    end

    describe 'when passing one element arry' do
      let(:values) { [2] }

      it do
        expect(subject).to match_array([
          [nil,2],
          [2,4]
        ])
      end
    end

    describe 'when passing [2,3,5, 7]' do
      let(:values) { [2,3,5, 7] }

      it do
        expect(subject).to match_array([
          [nil, 2,  3,  5,  7],
          [2,   4,  6, 10, 14],
          [3,   6,  9, 15, 21],
          [5,  10, 15, 25, 35],
          [7,  14, 21, 35, 49]
        ])
      end
    end
  end
end
