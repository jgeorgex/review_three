class BandPass
    def filter(frequency,low_range,high_range)
            frequency.map! {|x| if x < low_range
                                    x = low_range
                                elsif x > high_range
                                    x = high_range
                                else
                                    x = x
                                end }
    end
end