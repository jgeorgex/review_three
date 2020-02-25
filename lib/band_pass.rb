class BandPass
    def filter(frequency,low_range,high_range)
        if frequency[0] < low_range
            frequency = [low_range]
        elsif frequency[0] > high_range
            frequency = [high_range]
        end
    end
end