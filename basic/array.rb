#
# 配列
#
a = [1, 2, 3]
b = ['apple', 'orange']
c = [[10, 20, 30], [40, 50, 60]]

pp a[0] # 1
pp a[3] # nil

# 要素数取得メソッド
puts a.size # 3

# 要素の変更
a = [1, 2, 3]
a[1] = 20
pp a # [1, 20, 3]


# 間の要素がnilで埋められる
a[4] = 50
pp a # [1, 20, 3, nil, 50]

# <<を使うと配列の最後の要素を追加
a << 1
pp a # [1, 20, 3, nil, 50, 1]

# delete_atで要素を削除
a.delete_at(1)
pp a # [1, 3, nil, 50, 1]


# 配列を使った多重代入
a, b = [1, 2]
puts a # 1
puts b # 2

# 右辺の数が少ない場合nilが入る
a, b = [1]
pp a # 1
pp b # nil

# 右辺の数が多い場合切り捨てられる
a, b = [1, 2, 3]
pp a # 1
pp b # 2

# 割り算の値と余りを配列として返すdivmodというメソッドがある
# 多重代入すると便利
# 14を3で割る
a = 14.divmod(3)
pp a # [4, 2]


# map
numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map { |n| n * 10}
pp new_numbers # [10, 20, 30, 40, 50]

# select
# 評価しtrueの要素を集めた配列を返す
# 例：偶数だけ
numbers = [1, 2, 3, 4, 5, 6]
new_numbers = numbers.select { |n| n.even? }
pp new_numbers # [2, 4, 6]


# reject
# 評価しtrueの要素を削除
# 例：偶数だけ削除
numbers = [1, 2, 3, 4, 5, 6]
new_numbers = numbers.reject { |n| n.even? }
pp new_numbers # [1, 3, 5]


# find
# trueになった最初の要素の値だけ返す
numbers = [1, 2, 3, 4, 5, 6]
number = numbers.find { |n| n.even? }
pp number # 2

# sum 合計
numbers = [1, 2, 3, 4, 5, 6]
puts numbers.sum # 21

# ブロックを渡すと戻り値が合計される
# 2倍しながら合計
numbers = [1, 2, 3, 4, 5, 6]
number = numbers.sum { |n| n * 2 } 
puts number # 42


# join
# 文字列連結
chars = ['a', 'b', 'c']
puts chars.join # abc
 
# 区切り文字も渡せる
chars = ['a', 'b', 'c']
puts chars.join('-') # a-b-c


# &とシンボルを使って簡潔に書く
# &:メソッド名という書き方ができる。これがシンボル
# 条件
#  ブロックパラメータ(s)が1つだけ
#  ブロックの中で呼び出すメソッドに引数がない
#  ブロックの中ではブロックパラメータに対してメソッドを1回呼び出す以外の処理がない
['ruby', 'java', 'python'].map {|s| s.upcase }
['ruby', 'java', 'python'].map(&:upcase)


# 文字列を配列に変換
pp 'Ruby'.chars # ["R", "u", "b", "y"]

# カンマ区切り文字を配列にする
pp 'Ruby,Java'.split(',') # ["Ruby", "Java"]

#
# さまざまな要素の取得方法
#

# 添字を2つ使うと位置と取得する長さを指定でき、配列が帰ってくる
a = [1, 2, 3, 4, 5]
pp a[1, 3] # [2, 3, 4]

# values_atを指定すると要素を複数指定できる
a = [1, 2, 3, 4, 5]
pp a.values_at(0, 2, 4) # [1, 3, 5]

# size - 1すると最後の要素の値を取得できる
a = [1, 2, 3, 4, 5]
pp a[a.size - 1] # 5

# 配列.lastでも最後の要素の値を取得できる
a = [1, 2, 3, 4, 5]
pp a.last # 5

# 添字に負の値が使える -1は最後の要素、-2は最後から2番目の要素
a = [1, 2, 3, 4, 5]
pp a[-1] # 5
pp a[-2] # 4


#
# 配列の連結
#

# concatは破壊的メソッド。元の破裂も変わる
a = [1]
b = [2, 3]
pp a.concat(b) # [1, 2, 3]
pp a           # [1, 2, 3]


# +演算子は元の配列を変更しない
a = [1]
b = [2, 3]
pp a + b # [1, 2, 3]
pp a     # [1]

#
# 和集合、差集合、積集合
# 

# 和集合は|
a = [1, 2, 3]
b = [3, 4, 5]
pp a | b # [1, 2, 3, 4, 5]

# 差集合は-
a = [1, 2, 3]
b = [3, 4, 5]
pp a - b # [1, 2]

# 差集合は&
a = [1, 2, 3]
b = [3, 4, 5]
pp a & b # [3]