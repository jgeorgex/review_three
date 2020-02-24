class BandPass
    def filter(band,low,high)
        if band[0] < low
            band = [low]
        elsif band[0] > high
            band = [high]
        end
        band
    end
end