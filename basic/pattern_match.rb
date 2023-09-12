#
# パターンマッチ
#

require 'date'
records = [
  [2021],
  [2019, 5],
  [2017, 11, 25]
]

records.map do |record|
  case record
  in [y]
    puts Date.new(y, 1, 1)
  in [y, m]
    puts Date.new(y, m, 1) 
  in [y, m, d]
    puts Date.new(y, m, d)
  end
end

# 2021-01-01
# 2019-05-01
# 2017-11-25
