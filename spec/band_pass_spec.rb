require 'band_pass'

describe BandPass do
    describe '#filter' do
      it 'filters signal' do
        band_pass = BandPass.new
        expect(band_pass.filter([1],2,3)). to eq([2])
      end
    end
end