# input: integer float
# output: string (degrees minutes and seconds)
# rules: 
#         Explicit requirements:
#          - two digit numbers with leading zeros when formatting
#          - input is between 0 and 360
#          - degree = 60 minutes
#          - minute = 60 seconds
#          Implicit requirements:
#          - round values
# 
# The method below did not work at all. Took me WAY too long to try to get this to work for all examples.
# It's a mess. Moving on.
#
# def dms(float)
#   degree = float.truncate
#   minutes = (("." + float.to_s.split(".").pop).to_f * 60)
#   seconds = ("." + (("." + float.to_s.split(".").pop).to_f * 60).to_s.split(".").pop).to_f * 60
#   p "#{degree}°" + "#{format('%02.0d', minutes)}'" + "#{format('%02.0d', seconds)}\""
# end

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
