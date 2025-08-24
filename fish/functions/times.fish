function times
    # Function to determine if time is in business hours (9am-10pm)
    function get_dot_color
        set time_str $argv[1]
        set hour (echo $time_str | string replace -r '^0*(\d+):.*' '$1')
        set ampm (echo $time_str | string match -r 'AM|PM')
        
        # Convert to 24-hour format
        if test "$ampm" = "PM" -a "$hour" != "12"
            set hour (math $hour + 12)
        else if test "$ampm" = "AM" -a "$hour" = "12"
            set hour 0
        end
        
        # Check if between 9am (09) and 10pm (22)
        if test $hour -ge 9 -a $hour -le 22
            echo "🟢"  # Green dot
        else
            echo "🔴"  # Red dot
        end
    end

    # Sydney
    set syd_t (TZ=Australia/Sydney date '+%I:%M %p')
    set syd_dot (get_dot_color "$syd_t")
    printf "%s Sydney:     %s\n" "$syd_dot" "$syd_t"

    # Hong Kong (UTC+8)
    set hong_kong_time (TZ=Asia/Hong_Kong date '+%I:%M %p')
    set hk_dot (get_dot_color "$hong_kong_time")
    printf "%s Hong Kong:  %s\n" "$hk_dot" "$hong_kong_time"

    # Chicago (UTC-6/-5 depending on DST)
    set chicago_time (TZ=America/Chicago date '+%I:%M %p')
    set chi_dot (get_dot_color "$chicago_time")
    printf "%s Chicago:    %s\n" "$chi_dot" "$chicago_time"

    # San Diego (UTC-8/-7 depending on DST)
    set san_diego_time (TZ=America/Los_Angeles date '+%I:%M %p')
    set sd_dot (get_dot_color "$san_diego_time")
    printf "%s San Diego:  %s\n" "$sd_dot" "$san_diego_time"

    # London (UTC+0/+1 depending on DST)
    set london_time (TZ=Europe/London date '+%I:%M %p')
    set lon_dot (get_dot_color "$london_time")
    printf "%s London:     %s\n" "$lon_dot" "$london_time"
end
