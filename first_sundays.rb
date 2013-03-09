# You are given the following information, but you may prefer to do some
# research for yourself.
# 
# - 1 Jan 1900 was a Monday.
# - Thirty days has September,
#   April, June and November.
#   All the rest have thirty-one,
#   Saving February alone,
#   Which has twenty-eight, rain or shine.
#   And on leap years, twenty-nine.
# - A leap year occurs on any year evenly divisible by 4, but not on a century
#   unless it is divisible by 400.
# 
# How many Sundays fell on the first of the month during the twentieth century
# (1 Jan 1901 to 31 Dec 2000)?

require 'date'

start_date = Date.parse "1 Jan 1901"
  end_date = Date.parse "31 Dec 2000"

first_sundays = 0

start_date.upto end_date do |date|
  first_sundays += 1 if date.day == 1 and date.sunday?
end

puts first_sundays

# puts (Date.parse("1 Jan 1901")..Date.parse("31 Dec 2000")).select{ |d| d.day == 1 and d.sunday? }.count
