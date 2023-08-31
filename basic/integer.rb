#
# 数値
#

# アンダースコアは虫されるので区切り文字に使える
num = 1_000_000_000
puts num #1000000000

# 整数同士の割り算は整数になる
num = 1 / 2
puts num #0

# どちらかを小数点付きにする
num = 1.0 / 2 
puts num #0.5

# 整数が入っている場合はto_fメソッドで少数に変更できる
num = 1
puts num.to_f # 1.0
puts num.to_f / 2 # 0.5


# 余り
num = 8 % 3
puts num #2

# べき乗
num = 2 ** 3
puts num # 8

# ++や--はなく+=と-=を使う
n = 1
n += 1
puts n # 2
n -= 1
puts n # 1


# 同様に*= /= **=も使える
n = 2
n *= 3
puts n # 6

n /= 2
puts n # 3

n **= 2
puts n # 9

# 文字列はto_iメソッドで数値に変換する必要がある
num = 1
num = num + '10'.to_i
puts num # 11

# 数値はto_sメソッドで文字列に変換する必要がある
number = 3
puts 'Number is ' + number.to_s # Number is 3

# 基数指示子
#
# 2進数 0b
# 8進数 0
# 16進数 0x
0b11111111 # 255
0377 # 255
0xff # 255

# 数値クラス
#
# Numericクラスの下に
# Interger(整数)クラス、Flat(実数、少数)クラス、Rational(有理数)クラスなどがある
#
10.class # Integer
1.5.class # Float

# timesメソッド
# 繰り返し
sum = 0
5.times {|n| sum += n}
puts sum #10

# nからmまでの数値を1つずつ増やしながら処理したいときはuptoがある。
# downtoもあるよ
a = []
10.upto(14) {|n| a << n}
pp a # [10, 11, 12, 13, 14]

# 1, 3, 5のようにnからmまで数値をx個ずつ増やしながら何か処理したい場合
# 1から10まで2つずつ処理
a = []
1.step(10,2) {|n| a << n}
pp a # [1, 3, 5, 7, 9]