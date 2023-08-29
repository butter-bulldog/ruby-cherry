#
# if文
#

# elseifでなくelsif
country = 'italy'
if country == 'japan'
 puts 'こんにちは'
elsif country == 'us'
  puts 'hello'
elsif country == 'italy'
  puts 'chao'
end

# if文は戻り値を返すので変数に代入することができる
# どの条件にも合致しなかった場合はnilが返る
country = 'italy'
greenting =
  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'hello'
  elsif country == 'italy'
    'chao'
  end
puts greenting #chao


# 後置if
# 文の後ろにifを書くことができる
# 1日であればポイント5倍
point = 7
day = 1
point *= 5 if day == 1
puts point

# thenを使うと処理を1行にできる
country = 'japan'
greenting = if country == 'japan' then 'こんにちは'
elsif country == 'us' then 'Hello'
elsif country == 'italy' then 'Chao'
end
puts greenting


# if文ではないけど…三項演算子もかける
n = 11
message = n > 10 ? '10より大きい' : '10以下'
puts message