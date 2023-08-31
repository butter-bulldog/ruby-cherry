#
# 繰り返し処理
#

#
# while
#

# aの要素数が5個になるまで繰り返す
a = []
while a.size < 5
  a << 1
end
pp a # [1, 1, 1, 1, 1]

# 条件式の後ろにdoを入れると1行でかける
a = []
while a.size < 5 do a << 1 end
pp a # [1, 1, 1, 1, 1]

# 1行で書くならこっちのほうがスッキリ
a = []
a << 1while a.size < 5
pp a # [1, 1, 1, 1, 1]


# 最低1回は実行したい場合はbegin endで囲む
a = []
begin
  a << 1
end while false # 条件が偽のため実行されない
pp a # [1]

#
# until
#

# 条件が偽の場合だけ繰り返す
a = [10, 20, 30, 40, 50]
until a.size <= 3
  a.delete_at(-1)
end
pp a # [10, 20, 30]


#
# for
#

# この場合は通常、配列.each文を使う
numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
  sum += n
end
pp sum # 10


#
# next
#
numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
  next if n.even? # 偶数だったら次のループに進む
  puts n
end
# 1
# 3
# 5