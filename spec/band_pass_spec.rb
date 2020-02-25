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
      it 'filters signal brings 4 up to 5' do
        band_pass = BandPass.new
        expect(band_pass.filter([4],5,6)). to eq([5])
      end
      it 'filters signal brings 4 down to 3' do
        band_pass = BandPass.new
        expect(band_pass.filter([4],1,3)). to eq([3])
      end
      it 'filters signal keeps 2,3 down when low is 1 and high is 4 ' do
        band_pass = BandPass.new
        expect(band_pass.filter([2,3],1,4)). to eq([2,3])
      end
      it 'filters signal keeps 2,3 down when low is 1 and high is 4 ' do
        band_pass = BandPass.new
        expect(band_pass.filter([2,3],1,4)). to eq([2,3])
      end
      it 'filters signal changes from 1,3 to 2,3 when high,low is 2,4' do
        band_pass = BandPass.new
        expect(band_pass.filter([1,3],2,4)). to eq([2,3])
      end
      it 'filters signal changes from 1,2,3,4 to 1,2,3,3 when high,low is 1,3' do
        band_pass = BandPass.new
        expect(band_pass.filter([1,2,3,4],1,3)). to eq([1,2,3,3])
      end
      it 'filters signal changes from 10,7,8,5 to 9,7,8,6 when high,low is 6,9' do
        band_pass = BandPass.new
        expect(band_pass.filter([10,7,8,5],6,9)). to eq([9,7,8,6])
      end
      it 'returns argument error "input soundwave is corrupt" if nil value is given' do
        band_pass = BandPass.new
        expect(band_pass.filter(["A"],"A","A")). to eq("input soundwave is corrupt")
      end
    end
end