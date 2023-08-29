#
# 真偽値
#

# false またはnilであれば偽
# それ以外はすべて真

find_data = nil
data = find_data
if data
  puts 'データあり'
else
  puts 'データなし'
end