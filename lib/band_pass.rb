class BandPass
    def filter(frequency, low_range, high_range)
        if check_low_range(low_range) == false
            "input soundwave is corrupt"
        elsif check_high_range(high_range) == false
            "input soundwave is corrupt"
        elsif check_frequency(frequency) == false
            return "input soundwave is corrupt"
        else
          get_new_frequency(frequency, low_range, high_range)
        end
    end

    def get_new_frequency(frequency, low_range, high_range)
        frequency.map! {|checked_frequency| if checked_frequency < low_range
                                                low_range
                                            elsif checked_frequency > high_range
                                                high_range
                                            else
                                                checked_frequency
                                            end 
                        }
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
                               return false
                            else
                                return frequency
                            end
                        }
    end
end
