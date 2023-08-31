#
# range 範囲
#
range = 1..5 # 1以上5以下
pp range # 1..5
pp range.include?(5) # true

range = 1...5 # 1以上5未満
pp range # 1...5
pp range.include?(5) # false

# 配列の一部を抜き出す
a = [1, 2, 3, 4 ,5]
pp a[1..3] # [2, 3, 4]

# 文字列の一部を抜き出す
a = 'abcdef'
pp a[1...3] # "bc"


# n以上m以下などの判定を不等号でなくrangeを使うと便利
def liquid?(temperature)
  (0...100).include?(temperature)
end
pp liquid?(0)   # true
pp liquid?(99)  # true
pp liquid?(100) # false


# case文もOK
# 料金算出
def charge(age)
  case age
    when 0..5
      0
    when 6..12
      300
    when 13..18
      600
    else
      1000
  end
end
pp charge(14) # 600

# 範囲オブジェクトに対してto_aメソッドを使うと配列を作成できる
pp (1..5).to_a # [1, 2, 3, 4, 5]
pp (1...5).to_a # [1, 2, 3, 4]

pp ('a'..'e').to_a  # ["a", "b", "c", "d", "e"]
pp ('a'...'e').to_a # ["a", "b", "c", "d"]


# 配列を作成できるので配列の繰り返しメソッドを使える
numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n}
pp sum # 10

# がしかし、範囲オブジェクトに対して直接eachが書ける
sum = 0
(1..4).each {|n| sum += n}
pp sum # 10

# stepメソッドを呼び出すと値を増やす間隔を指定できる
numbers = []
(1..10).step(2) {|n| numbers << n}
pp numbers # [1, 3, 5, 7, 9]