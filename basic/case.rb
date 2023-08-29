#
# case文
#

# breakは不要
country = 'italy'
case country
when 'japan'
  'こんにちは'
when 'us'
  'hello'
when 'italy'
  'chao'
else
  '???'
end

# whenに複数の値を指定し、どれかに一致すればという書き方ができる
country = 'italy'
case country
when 'japan', '日本'
  'こんにちは'
when 'us', 'アメリカ'
  'hello'
when 'italy', 'イタリア'
  'chao'
else
  '???'
end

# if文と同様に最後に評価された式を戻り値を返すので変数に入れることもできる

country = 'italy'
message = 
  case country
  when 'japan', '日本'
    'こんにちは'
  when 'us', 'アメリカ'
    'hello'
  when 'italy', 'イタリア'
    'chao'
  else
    '???'
  end
puts message