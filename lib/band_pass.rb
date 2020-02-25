class BandPass
    def filter(frequency, low_range, high_range)
        # p check_low_range(low_range)
        if check_low_range(low_range) == false
            "input soundwave is corrupt"
        elsif check_high_range(high_range) == false
            "input soundwave is corrupt"
        elsif check_frequency(frequency) == "input soundwave is corrupt"
            return "input soundwave is corrupt"
        else
          new_frequency = get_new_frequency(frequency, low_range, high_range)
          check_valid(new_frequency)
        end
    end

    def get_new_frequency(frequency, low_range, high_range)
        frequency.map! {|x| if x < low_range
                                    x = low_range
                                elsif x > high_range
                                    x = high_range
                                else
                                    x = x
                                end }
    end

    def check_valid(frequency)
         check_frequency(frequency)
    end
    
    def check_low_range(low_range)
        low_range.is_a?(Integer)
    end

    def check_high_range(high_range)
        high_range.is_a?(Integer)
    end

    def check_frequency(frequency)
        frequency.all? {|x| if x.is_a?(Integer) == false
            return "input soundwave is corrupt"
    else
            return frequency
    end}
    end



end