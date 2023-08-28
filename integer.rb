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
