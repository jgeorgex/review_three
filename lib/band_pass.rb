class BandPass
    def filter(band,low,high)
        if band[0] < low
            band = [low]
        end
        band
    end
end