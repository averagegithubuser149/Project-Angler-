/// scr_pad_seconds_zeros(seconds)
// Formats the given seconds with leading zeroes if necessary
var sec_str = string(seconds);
if (string_length(sec_str) < 2) {
    sec_str = "0" + sec_str;
}
return sec_str;
