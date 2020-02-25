require 'band_pass'

describe BandPass do
    describe '#filter' do
      it 'filters signal brings 1 up to 2' do
        band_pass = BandPass.new
        expect(band_pass.filter([1],2,3)). to eq([2])
      end
      it 'filters signal brings 4 down to 3' do
        band_pass = BandPass.new
        expect(band_pass.filter([4],2,3)). to eq([3])
      end
      it 'filters signal keeps 2 when low 1 and high 3' do
        band_pass = BandPass.new
        expect(band_pass.filter([2],1,3)). to eq([2])
      end
    end
end