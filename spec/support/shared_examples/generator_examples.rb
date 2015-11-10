RSpec.shared_examples 'generates one prime number' do
  context 'when generating 1 number' do
    let(:length) { 1 }

    it do
      expect(subject.call).to match_array([2])
    end
  end
end

RSpec.shared_examples 'generates 11 prime numbers' do
  context 'when generating 11 numbers' do
    let(:length) { 11 }

    it do
      expect(subject.call).to match_array([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31])
    end
  end
end
