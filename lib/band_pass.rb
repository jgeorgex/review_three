class BandPass
    def filter(band,low,high)
        if band[0] < 2
            band = [low]
        end
        band
    end
end