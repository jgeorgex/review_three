class BandPass
    def filter(frequency,low_range,high_range)
            new_frequency = frequency.map! {|x| if x < low_range
                                    x = low_range
                                elsif x > high_range
                                    x = high_range
                                else
                                    x = x
                                end }
            check_valid(new_frequency)
    end

    def check_valid(frequency)
        frequency.all? {|x| if x.is_a?(Integer) == false
            return "input soundwave is corrupt"
    else
            return frequency
    end}
    
    end

end