require_relative '../methods.rb'

RSpec.describe Array do
  let(:array) { [1, 2, 3] }

  describe '#my_select' do
    context 'when method works correct' do
      let(:expected_result) { [1] }

      it 'should return a specific element from array' do
        expect(array.my_select { |elem| elem == 1 }).to eq expected_result
      end
    end

    context 'boundary value analysis' do
      let(:expected_result) { [1, 2, 3] }

      it 'should return full number from array' do
        expect(array.my_select(&:positive?)).to eq expected_result
      end
    end

    context 'if we select an element outside bounds' do
      let(:expected_result) { [] }

      it 'should return clear array' do
        expect(array.my_select(&:zero?)).to eq expected_result
        expect(array.my_select(&:negative?)).to eq expected_result
      end
    end
  end

  describe '#my_map' do
    context 'when method works correct' do
      it 'should do somthing with all elements from array' do
        expect(array.my_map { |elem| elem * 2 }).to eq [2, 4, 6]
        expect(array.my_map { |elem| elem**2 }).to eq [1, 4, 9]
      end
    end
  end

  describe '#my_each' do
    context 'wnen method works correct' do
      let(:new_array) { [] }

      it 'should sort out elements and passed them to the block' do
        array.my_each { |elem| new_array << (elem - 1) }
        expect(new_array).to eq [0, 1, 2]
      end
    end
  end
end
